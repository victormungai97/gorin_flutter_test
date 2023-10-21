// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(BuildContext context, String source) imagePicked,
    required TResult Function(XFile? image) fileUploaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BuildContext context, String source)? imagePicked,
    TResult? Function(XFile? image)? fileUploaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BuildContext context, String source)? imagePicked,
    TResult Function(XFile? image)? fileUploaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PickedImage value) imagePicked,
    required TResult Function(_UploadedFile value) fileUploaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PickedImage value)? imagePicked,
    TResult? Function(_UploadedFile value)? fileUploaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PickedImage value)? imagePicked,
    TResult Function(_UploadedFile value)? fileUploaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageEventCopyWith<$Res> {
  factory $ImageEventCopyWith(
          ImageEvent value, $Res Function(ImageEvent) then) =
      _$ImageEventCopyWithImpl<$Res, ImageEvent>;
}

/// @nodoc
class _$ImageEventCopyWithImpl<$Res, $Val extends ImageEvent>
    implements $ImageEventCopyWith<$Res> {
  _$ImageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ImageEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ImageEvent.started'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(BuildContext context, String source) imagePicked,
    required TResult Function(XFile? image) fileUploaded,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BuildContext context, String source)? imagePicked,
    TResult? Function(XFile? image)? fileUploaded,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BuildContext context, String source)? imagePicked,
    TResult Function(XFile? image)? fileUploaded,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PickedImage value) imagePicked,
    required TResult Function(_UploadedFile value) fileUploaded,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PickedImage value)? imagePicked,
    TResult? Function(_UploadedFile value)? fileUploaded,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PickedImage value)? imagePicked,
    TResult Function(_UploadedFile value)? fileUploaded,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ImageEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$PickedImageImplCopyWith<$Res> {
  factory _$$PickedImageImplCopyWith(
          _$PickedImageImpl value, $Res Function(_$PickedImageImpl) then) =
      __$$PickedImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, String source});
}

/// @nodoc
class __$$PickedImageImplCopyWithImpl<$Res>
    extends _$ImageEventCopyWithImpl<$Res, _$PickedImageImpl>
    implements _$$PickedImageImplCopyWith<$Res> {
  __$$PickedImageImplCopyWithImpl(
      _$PickedImageImpl _value, $Res Function(_$PickedImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? source = null,
  }) {
    return _then(_$PickedImageImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PickedImageImpl with DiagnosticableTreeMixin implements _PickedImage {
  const _$PickedImageImpl({required this.context, this.source = 'gallery'});

  @override
  final BuildContext context;
  @override
  @JsonKey()
  final String source;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageEvent.imagePicked(context: $context, source: $source)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageEvent.imagePicked'))
      ..add(DiagnosticsProperty('context', context))
      ..add(DiagnosticsProperty('source', source));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickedImageImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.source, source) || other.source == source));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, source);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickedImageImplCopyWith<_$PickedImageImpl> get copyWith =>
      __$$PickedImageImplCopyWithImpl<_$PickedImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(BuildContext context, String source) imagePicked,
    required TResult Function(XFile? image) fileUploaded,
  }) {
    return imagePicked(context, source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BuildContext context, String source)? imagePicked,
    TResult? Function(XFile? image)? fileUploaded,
  }) {
    return imagePicked?.call(context, source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BuildContext context, String source)? imagePicked,
    TResult Function(XFile? image)? fileUploaded,
    required TResult orElse(),
  }) {
    if (imagePicked != null) {
      return imagePicked(context, source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PickedImage value) imagePicked,
    required TResult Function(_UploadedFile value) fileUploaded,
  }) {
    return imagePicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PickedImage value)? imagePicked,
    TResult? Function(_UploadedFile value)? fileUploaded,
  }) {
    return imagePicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PickedImage value)? imagePicked,
    TResult Function(_UploadedFile value)? fileUploaded,
    required TResult orElse(),
  }) {
    if (imagePicked != null) {
      return imagePicked(this);
    }
    return orElse();
  }
}

abstract class _PickedImage implements ImageEvent {
  const factory _PickedImage(
      {required final BuildContext context,
      final String source}) = _$PickedImageImpl;

  BuildContext get context;
  String get source;
  @JsonKey(ignore: true)
  _$$PickedImageImplCopyWith<_$PickedImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadedFileImplCopyWith<$Res> {
  factory _$$UploadedFileImplCopyWith(
          _$UploadedFileImpl value, $Res Function(_$UploadedFileImpl) then) =
      __$$UploadedFileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile? image});
}

/// @nodoc
class __$$UploadedFileImplCopyWithImpl<$Res>
    extends _$ImageEventCopyWithImpl<$Res, _$UploadedFileImpl>
    implements _$$UploadedFileImplCopyWith<$Res> {
  __$$UploadedFileImplCopyWithImpl(
      _$UploadedFileImpl _value, $Res Function(_$UploadedFileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$UploadedFileImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$UploadedFileImpl with DiagnosticableTreeMixin implements _UploadedFile {
  const _$UploadedFileImpl({this.image});

  @override
  final XFile? image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageEvent.fileUploaded(image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageEvent.fileUploaded'))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadedFileImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadedFileImplCopyWith<_$UploadedFileImpl> get copyWith =>
      __$$UploadedFileImplCopyWithImpl<_$UploadedFileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(BuildContext context, String source) imagePicked,
    required TResult Function(XFile? image) fileUploaded,
  }) {
    return fileUploaded(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BuildContext context, String source)? imagePicked,
    TResult? Function(XFile? image)? fileUploaded,
  }) {
    return fileUploaded?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BuildContext context, String source)? imagePicked,
    TResult Function(XFile? image)? fileUploaded,
    required TResult orElse(),
  }) {
    if (fileUploaded != null) {
      return fileUploaded(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PickedImage value) imagePicked,
    required TResult Function(_UploadedFile value) fileUploaded,
  }) {
    return fileUploaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PickedImage value)? imagePicked,
    TResult? Function(_UploadedFile value)? fileUploaded,
  }) {
    return fileUploaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PickedImage value)? imagePicked,
    TResult Function(_UploadedFile value)? fileUploaded,
    required TResult orElse(),
  }) {
    if (fileUploaded != null) {
      return fileUploaded(this);
    }
    return orElse();
  }
}

abstract class _UploadedFile implements ImageEvent {
  const factory _UploadedFile({final XFile? image}) = _$UploadedFileImpl;

  XFile? get image;
  @JsonKey(ignore: true)
  _$$UploadedFileImplCopyWith<_$UploadedFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ImagePickingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(XFile? file) complete,
    required TResult Function(String message) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(XFile? file)? complete,
    TResult? Function(String message)? exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(XFile? file)? complete,
    TResult Function(String message)? exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImagePickingInitial value) initial,
    required TResult Function(ImagePickingLoading value) loading,
    required TResult Function(ImagePickingDone value) complete,
    required TResult Function(ImagePickingError value) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImagePickingInitial value)? initial,
    TResult? Function(ImagePickingLoading value)? loading,
    TResult? Function(ImagePickingDone value)? complete,
    TResult? Function(ImagePickingError value)? exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImagePickingInitial value)? initial,
    TResult Function(ImagePickingLoading value)? loading,
    TResult Function(ImagePickingDone value)? complete,
    TResult Function(ImagePickingError value)? exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagePickingStateCopyWith<$Res> {
  factory $ImagePickingStateCopyWith(
          ImagePickingState value, $Res Function(ImagePickingState) then) =
      _$ImagePickingStateCopyWithImpl<$Res, ImagePickingState>;
}

/// @nodoc
class _$ImagePickingStateCopyWithImpl<$Res, $Val extends ImagePickingState>
    implements $ImagePickingStateCopyWith<$Res> {
  _$ImagePickingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ImagePickingInitialImplCopyWith<$Res> {
  factory _$$ImagePickingInitialImplCopyWith(_$ImagePickingInitialImpl value,
          $Res Function(_$ImagePickingInitialImpl) then) =
      __$$ImagePickingInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ImagePickingInitialImplCopyWithImpl<$Res>
    extends _$ImagePickingStateCopyWithImpl<$Res, _$ImagePickingInitialImpl>
    implements _$$ImagePickingInitialImplCopyWith<$Res> {
  __$$ImagePickingInitialImplCopyWithImpl(_$ImagePickingInitialImpl _value,
      $Res Function(_$ImagePickingInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ImagePickingInitialImpl
    with DiagnosticableTreeMixin
    implements ImagePickingInitial {
  const _$ImagePickingInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImagePickingState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ImagePickingState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagePickingInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(XFile? file) complete,
    required TResult Function(String message) exception,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(XFile? file)? complete,
    TResult? Function(String message)? exception,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(XFile? file)? complete,
    TResult Function(String message)? exception,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImagePickingInitial value) initial,
    required TResult Function(ImagePickingLoading value) loading,
    required TResult Function(ImagePickingDone value) complete,
    required TResult Function(ImagePickingError value) exception,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImagePickingInitial value)? initial,
    TResult? Function(ImagePickingLoading value)? loading,
    TResult? Function(ImagePickingDone value)? complete,
    TResult? Function(ImagePickingError value)? exception,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImagePickingInitial value)? initial,
    TResult Function(ImagePickingLoading value)? loading,
    TResult Function(ImagePickingDone value)? complete,
    TResult Function(ImagePickingError value)? exception,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ImagePickingInitial implements ImagePickingState {
  const factory ImagePickingInitial() = _$ImagePickingInitialImpl;
}

/// @nodoc
abstract class _$$ImagePickingLoadingImplCopyWith<$Res> {
  factory _$$ImagePickingLoadingImplCopyWith(_$ImagePickingLoadingImpl value,
          $Res Function(_$ImagePickingLoadingImpl) then) =
      __$$ImagePickingLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ImagePickingLoadingImplCopyWithImpl<$Res>
    extends _$ImagePickingStateCopyWithImpl<$Res, _$ImagePickingLoadingImpl>
    implements _$$ImagePickingLoadingImplCopyWith<$Res> {
  __$$ImagePickingLoadingImplCopyWithImpl(_$ImagePickingLoadingImpl _value,
      $Res Function(_$ImagePickingLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ImagePickingLoadingImpl
    with DiagnosticableTreeMixin
    implements ImagePickingLoading {
  const _$ImagePickingLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImagePickingState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ImagePickingState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagePickingLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(XFile? file) complete,
    required TResult Function(String message) exception,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(XFile? file)? complete,
    TResult? Function(String message)? exception,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(XFile? file)? complete,
    TResult Function(String message)? exception,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImagePickingInitial value) initial,
    required TResult Function(ImagePickingLoading value) loading,
    required TResult Function(ImagePickingDone value) complete,
    required TResult Function(ImagePickingError value) exception,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImagePickingInitial value)? initial,
    TResult? Function(ImagePickingLoading value)? loading,
    TResult? Function(ImagePickingDone value)? complete,
    TResult? Function(ImagePickingError value)? exception,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImagePickingInitial value)? initial,
    TResult Function(ImagePickingLoading value)? loading,
    TResult Function(ImagePickingDone value)? complete,
    TResult Function(ImagePickingError value)? exception,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ImagePickingLoading implements ImagePickingState {
  const factory ImagePickingLoading() = _$ImagePickingLoadingImpl;
}

/// @nodoc
abstract class _$$ImagePickingDoneImplCopyWith<$Res> {
  factory _$$ImagePickingDoneImplCopyWith(_$ImagePickingDoneImpl value,
          $Res Function(_$ImagePickingDoneImpl) then) =
      __$$ImagePickingDoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile? file});
}

/// @nodoc
class __$$ImagePickingDoneImplCopyWithImpl<$Res>
    extends _$ImagePickingStateCopyWithImpl<$Res, _$ImagePickingDoneImpl>
    implements _$$ImagePickingDoneImplCopyWith<$Res> {
  __$$ImagePickingDoneImplCopyWithImpl(_$ImagePickingDoneImpl _value,
      $Res Function(_$ImagePickingDoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(_$ImagePickingDoneImpl(
      freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$ImagePickingDoneImpl
    with DiagnosticableTreeMixin
    implements ImagePickingDone {
  const _$ImagePickingDoneImpl(this.file);

  @override
  final XFile? file;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImagePickingState.complete(file: $file)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImagePickingState.complete'))
      ..add(DiagnosticsProperty('file', file));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagePickingDoneImpl &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagePickingDoneImplCopyWith<_$ImagePickingDoneImpl> get copyWith =>
      __$$ImagePickingDoneImplCopyWithImpl<_$ImagePickingDoneImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(XFile? file) complete,
    required TResult Function(String message) exception,
  }) {
    return complete(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(XFile? file)? complete,
    TResult? Function(String message)? exception,
  }) {
    return complete?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(XFile? file)? complete,
    TResult Function(String message)? exception,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImagePickingInitial value) initial,
    required TResult Function(ImagePickingLoading value) loading,
    required TResult Function(ImagePickingDone value) complete,
    required TResult Function(ImagePickingError value) exception,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImagePickingInitial value)? initial,
    TResult? Function(ImagePickingLoading value)? loading,
    TResult? Function(ImagePickingDone value)? complete,
    TResult? Function(ImagePickingError value)? exception,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImagePickingInitial value)? initial,
    TResult Function(ImagePickingLoading value)? loading,
    TResult Function(ImagePickingDone value)? complete,
    TResult Function(ImagePickingError value)? exception,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class ImagePickingDone implements ImagePickingState {
  const factory ImagePickingDone(final XFile? file) = _$ImagePickingDoneImpl;

  XFile? get file;
  @JsonKey(ignore: true)
  _$$ImagePickingDoneImplCopyWith<_$ImagePickingDoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImagePickingErrorImplCopyWith<$Res> {
  factory _$$ImagePickingErrorImplCopyWith(_$ImagePickingErrorImpl value,
          $Res Function(_$ImagePickingErrorImpl) then) =
      __$$ImagePickingErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ImagePickingErrorImplCopyWithImpl<$Res>
    extends _$ImagePickingStateCopyWithImpl<$Res, _$ImagePickingErrorImpl>
    implements _$$ImagePickingErrorImplCopyWith<$Res> {
  __$$ImagePickingErrorImplCopyWithImpl(_$ImagePickingErrorImpl _value,
      $Res Function(_$ImagePickingErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ImagePickingErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ImagePickingErrorImpl
    with DiagnosticableTreeMixin
    implements ImagePickingError {
  const _$ImagePickingErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImagePickingState.exception(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImagePickingState.exception'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagePickingErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagePickingErrorImplCopyWith<_$ImagePickingErrorImpl> get copyWith =>
      __$$ImagePickingErrorImplCopyWithImpl<_$ImagePickingErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(XFile? file) complete,
    required TResult Function(String message) exception,
  }) {
    return exception(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(XFile? file)? complete,
    TResult? Function(String message)? exception,
  }) {
    return exception?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(XFile? file)? complete,
    TResult Function(String message)? exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImagePickingInitial value) initial,
    required TResult Function(ImagePickingLoading value) loading,
    required TResult Function(ImagePickingDone value) complete,
    required TResult Function(ImagePickingError value) exception,
  }) {
    return exception(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImagePickingInitial value)? initial,
    TResult? Function(ImagePickingLoading value)? loading,
    TResult? Function(ImagePickingDone value)? complete,
    TResult? Function(ImagePickingError value)? exception,
  }) {
    return exception?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImagePickingInitial value)? initial,
    TResult Function(ImagePickingLoading value)? loading,
    TResult Function(ImagePickingDone value)? complete,
    TResult Function(ImagePickingError value)? exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this);
    }
    return orElse();
  }
}

abstract class ImagePickingError implements ImagePickingState {
  const factory ImagePickingError({required final String message}) =
      _$ImagePickingErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ImagePickingErrorImplCopyWith<_$ImagePickingErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FileUploadingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double? progress) loading,
    required TResult Function(String? downloadUrl) complete,
    required TResult Function(String message) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double? progress)? loading,
    TResult? Function(String? downloadUrl)? complete,
    TResult? Function(String message)? exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double? progress)? loading,
    TResult Function(String? downloadUrl)? complete,
    TResult Function(String message)? exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileUploadingInitial value) initial,
    required TResult Function(FileUploadingLoading value) loading,
    required TResult Function(FileUploadingDone value) complete,
    required TResult Function(FileUploadingError value) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FileUploadingInitial value)? initial,
    TResult? Function(FileUploadingLoading value)? loading,
    TResult? Function(FileUploadingDone value)? complete,
    TResult? Function(FileUploadingError value)? exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileUploadingInitial value)? initial,
    TResult Function(FileUploadingLoading value)? loading,
    TResult Function(FileUploadingDone value)? complete,
    TResult Function(FileUploadingError value)? exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileUploadingStateCopyWith<$Res> {
  factory $FileUploadingStateCopyWith(
          FileUploadingState value, $Res Function(FileUploadingState) then) =
      _$FileUploadingStateCopyWithImpl<$Res, FileUploadingState>;
}

/// @nodoc
class _$FileUploadingStateCopyWithImpl<$Res, $Val extends FileUploadingState>
    implements $FileUploadingStateCopyWith<$Res> {
  _$FileUploadingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FileUploadingInitialImplCopyWith<$Res> {
  factory _$$FileUploadingInitialImplCopyWith(_$FileUploadingInitialImpl value,
          $Res Function(_$FileUploadingInitialImpl) then) =
      __$$FileUploadingInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FileUploadingInitialImplCopyWithImpl<$Res>
    extends _$FileUploadingStateCopyWithImpl<$Res, _$FileUploadingInitialImpl>
    implements _$$FileUploadingInitialImplCopyWith<$Res> {
  __$$FileUploadingInitialImplCopyWithImpl(_$FileUploadingInitialImpl _value,
      $Res Function(_$FileUploadingInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FileUploadingInitialImpl
    with DiagnosticableTreeMixin
    implements FileUploadingInitial {
  const _$FileUploadingInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FileUploadingState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'FileUploadingState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileUploadingInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double? progress) loading,
    required TResult Function(String? downloadUrl) complete,
    required TResult Function(String message) exception,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double? progress)? loading,
    TResult? Function(String? downloadUrl)? complete,
    TResult? Function(String message)? exception,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double? progress)? loading,
    TResult Function(String? downloadUrl)? complete,
    TResult Function(String message)? exception,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileUploadingInitial value) initial,
    required TResult Function(FileUploadingLoading value) loading,
    required TResult Function(FileUploadingDone value) complete,
    required TResult Function(FileUploadingError value) exception,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FileUploadingInitial value)? initial,
    TResult? Function(FileUploadingLoading value)? loading,
    TResult? Function(FileUploadingDone value)? complete,
    TResult? Function(FileUploadingError value)? exception,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileUploadingInitial value)? initial,
    TResult Function(FileUploadingLoading value)? loading,
    TResult Function(FileUploadingDone value)? complete,
    TResult Function(FileUploadingError value)? exception,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FileUploadingInitial implements FileUploadingState {
  const factory FileUploadingInitial() = _$FileUploadingInitialImpl;
}

/// @nodoc
abstract class _$$FileUploadingLoadingImplCopyWith<$Res> {
  factory _$$FileUploadingLoadingImplCopyWith(_$FileUploadingLoadingImpl value,
          $Res Function(_$FileUploadingLoadingImpl) then) =
      __$$FileUploadingLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double? progress});
}

/// @nodoc
class __$$FileUploadingLoadingImplCopyWithImpl<$Res>
    extends _$FileUploadingStateCopyWithImpl<$Res, _$FileUploadingLoadingImpl>
    implements _$$FileUploadingLoadingImplCopyWith<$Res> {
  __$$FileUploadingLoadingImplCopyWithImpl(_$FileUploadingLoadingImpl _value,
      $Res Function(_$FileUploadingLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = freezed,
  }) {
    return _then(_$FileUploadingLoadingImpl(
      progress: freezed == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$FileUploadingLoadingImpl
    with DiagnosticableTreeMixin
    implements FileUploadingLoading {
  const _$FileUploadingLoadingImpl({this.progress});

  @override
  final double? progress;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FileUploadingState.loading(progress: $progress)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FileUploadingState.loading'))
      ..add(DiagnosticsProperty('progress', progress));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileUploadingLoadingImpl &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileUploadingLoadingImplCopyWith<_$FileUploadingLoadingImpl>
      get copyWith =>
          __$$FileUploadingLoadingImplCopyWithImpl<_$FileUploadingLoadingImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double? progress) loading,
    required TResult Function(String? downloadUrl) complete,
    required TResult Function(String message) exception,
  }) {
    return loading(progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double? progress)? loading,
    TResult? Function(String? downloadUrl)? complete,
    TResult? Function(String message)? exception,
  }) {
    return loading?.call(progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double? progress)? loading,
    TResult Function(String? downloadUrl)? complete,
    TResult Function(String message)? exception,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileUploadingInitial value) initial,
    required TResult Function(FileUploadingLoading value) loading,
    required TResult Function(FileUploadingDone value) complete,
    required TResult Function(FileUploadingError value) exception,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FileUploadingInitial value)? initial,
    TResult? Function(FileUploadingLoading value)? loading,
    TResult? Function(FileUploadingDone value)? complete,
    TResult? Function(FileUploadingError value)? exception,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileUploadingInitial value)? initial,
    TResult Function(FileUploadingLoading value)? loading,
    TResult Function(FileUploadingDone value)? complete,
    TResult Function(FileUploadingError value)? exception,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FileUploadingLoading implements FileUploadingState {
  const factory FileUploadingLoading({final double? progress}) =
      _$FileUploadingLoadingImpl;

  double? get progress;
  @JsonKey(ignore: true)
  _$$FileUploadingLoadingImplCopyWith<_$FileUploadingLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FileUploadingDoneImplCopyWith<$Res> {
  factory _$$FileUploadingDoneImplCopyWith(_$FileUploadingDoneImpl value,
          $Res Function(_$FileUploadingDoneImpl) then) =
      __$$FileUploadingDoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? downloadUrl});
}

/// @nodoc
class __$$FileUploadingDoneImplCopyWithImpl<$Res>
    extends _$FileUploadingStateCopyWithImpl<$Res, _$FileUploadingDoneImpl>
    implements _$$FileUploadingDoneImplCopyWith<$Res> {
  __$$FileUploadingDoneImplCopyWithImpl(_$FileUploadingDoneImpl _value,
      $Res Function(_$FileUploadingDoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? downloadUrl = freezed,
  }) {
    return _then(_$FileUploadingDoneImpl(
      downloadUrl: freezed == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FileUploadingDoneImpl
    with DiagnosticableTreeMixin
    implements FileUploadingDone {
  const _$FileUploadingDoneImpl({this.downloadUrl});

  @override
  final String? downloadUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FileUploadingState.complete(downloadUrl: $downloadUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FileUploadingState.complete'))
      ..add(DiagnosticsProperty('downloadUrl', downloadUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileUploadingDoneImpl &&
            (identical(other.downloadUrl, downloadUrl) ||
                other.downloadUrl == downloadUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, downloadUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileUploadingDoneImplCopyWith<_$FileUploadingDoneImpl> get copyWith =>
      __$$FileUploadingDoneImplCopyWithImpl<_$FileUploadingDoneImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double? progress) loading,
    required TResult Function(String? downloadUrl) complete,
    required TResult Function(String message) exception,
  }) {
    return complete(downloadUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double? progress)? loading,
    TResult? Function(String? downloadUrl)? complete,
    TResult? Function(String message)? exception,
  }) {
    return complete?.call(downloadUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double? progress)? loading,
    TResult Function(String? downloadUrl)? complete,
    TResult Function(String message)? exception,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(downloadUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileUploadingInitial value) initial,
    required TResult Function(FileUploadingLoading value) loading,
    required TResult Function(FileUploadingDone value) complete,
    required TResult Function(FileUploadingError value) exception,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FileUploadingInitial value)? initial,
    TResult? Function(FileUploadingLoading value)? loading,
    TResult? Function(FileUploadingDone value)? complete,
    TResult? Function(FileUploadingError value)? exception,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileUploadingInitial value)? initial,
    TResult Function(FileUploadingLoading value)? loading,
    TResult Function(FileUploadingDone value)? complete,
    TResult Function(FileUploadingError value)? exception,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class FileUploadingDone implements FileUploadingState {
  const factory FileUploadingDone({final String? downloadUrl}) =
      _$FileUploadingDoneImpl;

  String? get downloadUrl;
  @JsonKey(ignore: true)
  _$$FileUploadingDoneImplCopyWith<_$FileUploadingDoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FileUploadingErrorImplCopyWith<$Res> {
  factory _$$FileUploadingErrorImplCopyWith(_$FileUploadingErrorImpl value,
          $Res Function(_$FileUploadingErrorImpl) then) =
      __$$FileUploadingErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FileUploadingErrorImplCopyWithImpl<$Res>
    extends _$FileUploadingStateCopyWithImpl<$Res, _$FileUploadingErrorImpl>
    implements _$$FileUploadingErrorImplCopyWith<$Res> {
  __$$FileUploadingErrorImplCopyWithImpl(_$FileUploadingErrorImpl _value,
      $Res Function(_$FileUploadingErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FileUploadingErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FileUploadingErrorImpl
    with DiagnosticableTreeMixin
    implements FileUploadingError {
  const _$FileUploadingErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FileUploadingState.exception(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FileUploadingState.exception'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileUploadingErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileUploadingErrorImplCopyWith<_$FileUploadingErrorImpl> get copyWith =>
      __$$FileUploadingErrorImplCopyWithImpl<_$FileUploadingErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double? progress) loading,
    required TResult Function(String? downloadUrl) complete,
    required TResult Function(String message) exception,
  }) {
    return exception(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double? progress)? loading,
    TResult? Function(String? downloadUrl)? complete,
    TResult? Function(String message)? exception,
  }) {
    return exception?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double? progress)? loading,
    TResult Function(String? downloadUrl)? complete,
    TResult Function(String message)? exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileUploadingInitial value) initial,
    required TResult Function(FileUploadingLoading value) loading,
    required TResult Function(FileUploadingDone value) complete,
    required TResult Function(FileUploadingError value) exception,
  }) {
    return exception(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FileUploadingInitial value)? initial,
    TResult? Function(FileUploadingLoading value)? loading,
    TResult? Function(FileUploadingDone value)? complete,
    TResult? Function(FileUploadingError value)? exception,
  }) {
    return exception?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileUploadingInitial value)? initial,
    TResult Function(FileUploadingLoading value)? loading,
    TResult Function(FileUploadingDone value)? complete,
    TResult Function(FileUploadingError value)? exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this);
    }
    return orElse();
  }
}

abstract class FileUploadingError implements FileUploadingState {
  const factory FileUploadingError({required final String message}) =
      _$FileUploadingErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$FileUploadingErrorImplCopyWith<_$FileUploadingErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
