part of 'image_bloc.dart';

@freezed
class ImageEvent with _$ImageEvent {
  const factory ImageEvent.started() = _Started;

  const factory ImageEvent.imagePicked({
    required BuildContext context,
    @Default('gallery') String source,
  }) = _PickedImage;

  const factory ImageEvent.fileUploaded({XFile? image}) = _UploadedFile;
}
