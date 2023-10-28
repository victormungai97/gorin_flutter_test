part of 'repository.dart';

/// File functionality around display (profile) picture
class DisplayPictureRepository implements FileRepository {
  const DisplayPictureRepository(this._environment);

  @override
  Future<RepositoryResponse<XFile>> pickFile(
    BuildContext context,
    FileType fileType, [
    FileSource source = FileSource.GALLERY,
  ]) async {
    switch (fileType) {
      case FileType.IMAGE:
        return await _pickImage(context, source);
      default:
        return RepositoryResponse.error('Unable to pick file');
    }
  }

  Future<RepositoryResponse<XFile>> _pickImage(
    BuildContext context, [
    FileSource source = FileSource.GALLERY,
  ]) async {
    try {
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
          return RepositoryResponse.error(
            'Unable to access device $source. Tap to retry',
          );
        }
      }

      final picker = ImagePicker();
      XFile? image;

      switch (source) {
        case FileSource.GALLERY:
          image = await picker.pickImage(
            source: ImageSource.gallery,
            imageQuality: 100,
          );
        case FileSource.CAMERA:
          image = await picker.pickImage(
            source: ImageSource.camera,
            maxWidth: 640,
            maxHeight: 480,
            preferredCameraDevice: CameraDevice.front,
          );
        default:
          return RepositoryResponse.error(
            'Unable to determine where to pick image',
          );
      }

      if (image == null) {
        return RepositoryResponse.error('No image selected. Please retry');
      }

      if (await image.length() > (5 * 1024 * 1024)) {
        return RepositoryResponse.error('Maximum size is 5 MBs');
      }

      return RepositoryResponse.done(image);
    } catch (error, stackTrace) {
      await _logger.log(
        error,
        label: 'EXCEPTION WHILE PICKING IMAGE',
        stackTrace: stackTrace,
      );
      return RepositoryResponse.error('Problem while picking image');
    }
  }

  @override
  Future<RepositoryResponse<T>> uploadFile<T>(
    XFile? image, [
    String destination = 'firebase_storage',
  ]) async {
    if (image == null) {
      return RepositoryResponse.error('No image provided');
    }

    switch (destination) {
      case 'firebase_storage':
        return await _firebaseStorageUpload<T>(image);
      default:
        return RepositoryResponse.error('Unable to pick file');
    }
  }

  Future<RepositoryResponse<T>> _firebaseStorageUpload<T>(XFile image) async {
    try {
      final fileName = image.name;
      final env = _environment;
      final parent = env == null ? '' : '${env.name}/';
      final destination = '${parent}images/$fileName';

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
        return RepositoryResponse.done(uploadTask as T);
      } on firebase_core.FirebaseException catch (e, stack) {
        await _logger.log(
          e.message,
          stackTrace: e.stackTrace ?? stack,
          label: 'FIREBASE STORAGE UPLOAD ERROR!!\t${e.code}',
        );
        return RepositoryResponse.error(
          'Unable to upload image. Contact support',
        );
      }
    } catch (error, stackTrace) {
      await _logger.log(
        error,
        label: 'EXCEPTION WHILE UPLOADING IMAGE',
        stackTrace: stackTrace,
      );
      return RepositoryResponse.error('Problem while uploading image');
    }
  }

  final Environment? _environment;
}
