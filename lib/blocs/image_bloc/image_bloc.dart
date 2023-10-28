import 'package:bloc/bloc.dart';
import 'package:firebase_storage/firebase_storage.dart' as fs;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gorin_test_project/repositories/repositories.dart';
import 'package:gorin_test_project/services/services.dart';
import 'package:gorin_test_project/utils/utils.dart';
import 'package:image_picker/image_picker.dart';

part 'image_event.dart';
part 'image_state.dart';
part 'image_bloc.freezed.dart';

const _logger = LoggingService.instance;

class ImageBloc extends Bloc<ImageEvent, ImageState> {
  ImageBloc(this._fileRepository) : super(const ImageInitial()) {
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
    FileSource source = FileSource.GALLERY,
  ]) async {
    try {
      emit(const ImagePickingState.loading());

      final result = await _fileRepository.pickFile(
        context,
        FileType.IMAGE,
        source,
      );

      result.when(
        done: ((image) => emit(ImagePickingDone(image))),
        error: (message) => emit(ImagePickingState.exception(message: message)),
      );
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
      emit(const FileUploadingState.loading());

      final result = await _fileRepository.uploadFile<fs.UploadTask>(image);

      await result.when(
        done: (uploadTask) async {
          // Listen for state changes, errors, and completion of the upload.
          uploadTask.snapshotEvents.listen(
            (fs.TaskSnapshot taskSnapshot) async {
              switch (taskSnapshot.state) {
                case fs.TaskState.running:
                  final progress =
                      taskSnapshot.bytesTransferred / taskSnapshot.totalBytes;
                  emit(FileUploadingLoading(progress: progress));
                  break;
                case fs.TaskState.paused:
                  emit(
                    const FileUploadingState.exception(
                      message: "Upload is paused.",
                    ),
                  );
                  break;
                case fs.TaskState.canceled:
                  emit(
                    const FileUploadingState.exception(
                      message: "Upload was canceled",
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
            },
            onError: (Object error, StackTrace stackTrace) async {
              emit(
                const FileUploadingError(
                  message:
                      'There was an issue with the upload. Please contact support',
                ),
              );
              await _logger.log(
                error,
                label: "IMAGE UPLOAD STREAM EXCEPTION",
                stackTrace: stackTrace,
              );
            },
            cancelOnError: true,
          );
          // so that the event doesn't end before the stream
          await uploadTask.snapshotEvents.last;
        },
        error: (e) async => emit(FileUploadingState.exception(message: e)),
      );
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

  final FileRepository _fileRepository;
}
