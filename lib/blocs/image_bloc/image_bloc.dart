import 'package:bloc/bloc.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:firebase_storage/firebase_storage.dart' as fs;
import 'package:gorin_test_project/services/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mime/mime.dart';
import 'package:permission_handler/permission_handler.dart' as perm;

part 'image_event.dart';
part 'image_state.dart';
part 'image_bloc.freezed.dart';

const _logger = LoggingService.instance;

class ImageBloc extends Bloc<ImageEvent, ImageState> {
  ImageBloc() : super(ImageInitial()) {
    on<ImageEvent>((event, emit) {
      event.when(
        imagePicked: _pickImage,
        started: () => emit(const ImageInitial()),
        fileUploaded: _uploadFile,
      );
    });
  }

  Future<void> _pickImage(
    BuildContext context, [
    String source = 'gallery',
  ]) async {
    try {
      emit(const ImagePickingLoading());

      if (!kIsWeb) {
        perm.Permission permission;
        if (source == 'gallery') {
          switch (defaultTargetPlatform) {
            case TargetPlatform.iOS:
              permission = perm.Permission.photos;
              break;
            case TargetPlatform.android:
              final deviceInfo = DeviceInfoPlugin();
              final androidInfo = await deviceInfo.androidInfo;
              final sdk = androidInfo.version.sdkInt;
              if (sdk >= 33) {
                permission = perm.Permission.photos;
              } else {
                permission = perm.Permission.storage;
              }
              break;
            default:
              permission = perm.Permission.unknown;
          }
        } else if (source == 'camera') {
          permission = perm.Permission.camera;
        } else {
          permission = perm.Permission.unknown;
        }

        final granted = await PermissionService.request(permission, context);
        if (!granted) {
          emit(
            ImagePickingState.exception(
              message: 'Unable to access device $source. Tap to retry',
            ),
          );
          return;
        }
      }

      final picker = ImagePicker();
      XFile? image;

      switch (source) {
        case 'gallery':
          image = await picker.pickImage(
            source: ImageSource.gallery,
            imageQuality: 100,
          );
        case 'camera':
          image = await picker.pickImage(
            source: ImageSource.camera,
            maxWidth: 640,
            maxHeight: 480,
            preferredCameraDevice: CameraDevice.front,
          );
        default:
          emit(
            const ImagePickingState.exception(
              message: 'Unable to determine where to pick image',
            ),
          );
          return;
      }

      if (image == null) {
        emit(
          const ImagePickingState.exception(
            message: 'No image selected. Please retry',
          ),
        );
        return;
      }

      if (await image.length() > (5 * 1024 * 1024)) {
        emit(
          const ImagePickingState.exception(message: 'Maximum size is 5 MBs'),
        );
        return;
      }

      emit(ImagePickingDone(image));
    } catch (error, stackTrace) {
      await _logger.log(
        error,
        label: 'Error running ImageBloc._pickImage',
        stackTrace: stackTrace,
      );
      emit(
        const ImagePickingState.exception(
          message: 'An error occurred picking image. Contact support',
        ),
      );
    }
  }

  Future<void> _uploadFile([XFile? image]) async {
    try {
      emit(const FileUploadingLoading());

      if (image == null) {
        emit(const FileUploadingState.exception(message: 'No image provided'));
        return;
      }

      final fileName = image.name;
      final destination = 'images/$fileName';

      try {
        // Create the file metadata
        final contentType = lookupMimeType(fileName);
        final metadata = fs.SettableMetadata(contentType: contentType);

        // Create a reference to the Firebase Storage bucket
        final storageRef = fs.FirebaseStorage.instance.ref();

        // Upload file and metadata
        final uploadTask = storageRef.child(destination).putData(
              await image.readAsBytes(),
              metadata,
            );

        // Listen for state changes, errors, and completion of the upload.
        uploadTask.snapshotEvents.listen((fs.TaskSnapshot taskSnapshot) async {
          switch (taskSnapshot.state) {
            case fs.TaskState.running:
              final progress =
                  taskSnapshot.bytesTransferred / taskSnapshot.totalBytes;
              emit(FileUploadingLoading(progress: progress));
              break;
            case fs.TaskState.paused:
              emit(
                const FileUploadingState.exception(
                  message: ("Upload is paused."),
                ),
              );
              break;
            case fs.TaskState.canceled:
              emit(
                const FileUploadingState.exception(
                  message: ("Upload was canceled"),
                ),
              );
              break;
            case fs.TaskState.error:
              emit(
                const FileUploadingState.exception(
                  message: 'Problem uploading image. Contact support',
                ),
              );
              break;
            case fs.TaskState.success:
              emit(
                FileUploadingDone(
                  downloadUrl: await taskSnapshot.ref.getDownloadURL(),
                ),
              );
              break;
          }
        });
      } on firebase_core.FirebaseException catch (e, stack) {
        await _logger.log(
          e.message,
          stackTrace: e.stackTrace ?? stack,
          label: e.code,
        );
        emit(
          const FileUploadingState.exception(
            message: 'Unable to upload image. Contact support',
          ),
        );
        return;
      }
    } catch (error, stackTrace) {
      await _logger.log(
        error,
        label: 'Error running ImageBloc._uploadFile',
        stackTrace: stackTrace,
      );
      emit(
        const FileUploadingState.exception(
          message: 'An error occurred uploading image. Contact support',
        ),
      );
    }
  }
}
