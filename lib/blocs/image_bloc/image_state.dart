part of 'image_bloc.dart';

@immutable
abstract class ImageState {
  const ImageState();
}

class ImageInitial extends ImageState {
  const ImageInitial();
}

/// Class defining the states surrounding the selection of image from device

@freezed
class ImagePickingState extends ImageState with _$ImagePickingState {
  /// Factory constructor for initial image picking state
  const factory ImagePickingState.initial() = ImagePickingInitial;

  /// Factory constructor to state that image picking is ongoing
  const factory ImagePickingState.loading() = ImagePickingLoading;

  /// Factory constructor to state that image picking has finished
  const factory ImagePickingState.complete(XFile file) = ImagePickingDone;

  /// Factory constructor for error that may occur while picking a image
  const factory ImagePickingState.exception({required String message}) =
      ImagePickingError;
}

/// Class defining the states surrounding file upload from device

@freezed
class FileUploadingState extends ImageState with _$FileUploadingState {
  /// Factory constructor for initial file uploading state
  const factory FileUploadingState.initial() = FileUploadingInitial;

  /// Factory constructor to state that file uploading is ongoing
  const factory FileUploadingState.loading({double? progress}) =
      FileUploadingLoading;

  /// Factory constructor to state that file uploading has finished
  /// `null` file indicates that file has been cleared
  const factory FileUploadingState.complete({String? downloadUrl}) =
      FileUploadingDone;

  /// Factory constructor for error that may occur while uploading a file
  const factory FileUploadingState.exception({required String message}) =
      FileUploadingError;
}
