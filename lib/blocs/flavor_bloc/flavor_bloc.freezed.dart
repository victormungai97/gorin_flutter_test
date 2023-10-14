// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flavor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FlavorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() flavorLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? flavorLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? flavorLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FlavorLoaded value) flavorLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FlavorLoaded value)? flavorLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FlavorLoaded value)? flavorLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlavorEventCopyWith<$Res> {
  factory $FlavorEventCopyWith(
          FlavorEvent value, $Res Function(FlavorEvent) then) =
      _$FlavorEventCopyWithImpl<$Res, FlavorEvent>;
}

/// @nodoc
class _$FlavorEventCopyWithImpl<$Res, $Val extends FlavorEvent>
    implements $FlavorEventCopyWith<$Res> {
  _$FlavorEventCopyWithImpl(this._value, this._then);

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
    extends _$FlavorEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'FlavorEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'FlavorEvent.started'));
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
    required TResult Function() flavorLoaded,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? flavorLoaded,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? flavorLoaded,
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
    required TResult Function(_FlavorLoaded value) flavorLoaded,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FlavorLoaded value)? flavorLoaded,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FlavorLoaded value)? flavorLoaded,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FlavorEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FlavorLoadedImplCopyWith<$Res> {
  factory _$$FlavorLoadedImplCopyWith(
          _$FlavorLoadedImpl value, $Res Function(_$FlavorLoadedImpl) then) =
      __$$FlavorLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FlavorLoadedImplCopyWithImpl<$Res>
    extends _$FlavorEventCopyWithImpl<$Res, _$FlavorLoadedImpl>
    implements _$$FlavorLoadedImplCopyWith<$Res> {
  __$$FlavorLoadedImplCopyWithImpl(
      _$FlavorLoadedImpl _value, $Res Function(_$FlavorLoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FlavorLoadedImpl with DiagnosticableTreeMixin implements _FlavorLoaded {
  const _$FlavorLoadedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FlavorEvent.flavorLoaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'FlavorEvent.flavorLoaded'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FlavorLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() flavorLoaded,
  }) {
    return flavorLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? flavorLoaded,
  }) {
    return flavorLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? flavorLoaded,
    required TResult orElse(),
  }) {
    if (flavorLoaded != null) {
      return flavorLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FlavorLoaded value) flavorLoaded,
  }) {
    return flavorLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FlavorLoaded value)? flavorLoaded,
  }) {
    return flavorLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FlavorLoaded value)? flavorLoaded,
    required TResult orElse(),
  }) {
    if (flavorLoaded != null) {
      return flavorLoaded(this);
    }
    return orElse();
  }
}

abstract class _FlavorLoaded implements FlavorEvent {
  const factory _FlavorLoaded() = _$FlavorLoadedImpl;
}

/// @nodoc
mixin _$FlavorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(FlavorModel flavor) loadSuccess,
    required TResult Function(String exception) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(FlavorModel flavor)? loadSuccess,
    TResult? Function(String exception)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(FlavorModel flavor)? loadSuccess,
    TResult Function(String exception)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FlavorInitial value) initial,
    required TResult Function(FlavorLoadInProgress value) loadInProgress,
    required TResult Function(FlavorLoadSuccess value) loadSuccess,
    required TResult Function(FlavorLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FlavorInitial value)? initial,
    TResult? Function(FlavorLoadInProgress value)? loadInProgress,
    TResult? Function(FlavorLoadSuccess value)? loadSuccess,
    TResult? Function(FlavorLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FlavorInitial value)? initial,
    TResult Function(FlavorLoadInProgress value)? loadInProgress,
    TResult Function(FlavorLoadSuccess value)? loadSuccess,
    TResult Function(FlavorLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlavorStateCopyWith<$Res> {
  factory $FlavorStateCopyWith(
          FlavorState value, $Res Function(FlavorState) then) =
      _$FlavorStateCopyWithImpl<$Res, FlavorState>;
}

/// @nodoc
class _$FlavorStateCopyWithImpl<$Res, $Val extends FlavorState>
    implements $FlavorStateCopyWith<$Res> {
  _$FlavorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FlavorInitialImplCopyWith<$Res> {
  factory _$$FlavorInitialImplCopyWith(
          _$FlavorInitialImpl value, $Res Function(_$FlavorInitialImpl) then) =
      __$$FlavorInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FlavorInitialImplCopyWithImpl<$Res>
    extends _$FlavorStateCopyWithImpl<$Res, _$FlavorInitialImpl>
    implements _$$FlavorInitialImplCopyWith<$Res> {
  __$$FlavorInitialImplCopyWithImpl(
      _$FlavorInitialImpl _value, $Res Function(_$FlavorInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FlavorInitialImpl
    with DiagnosticableTreeMixin
    implements FlavorInitial {
  const _$FlavorInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FlavorState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'FlavorState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FlavorInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(FlavorModel flavor) loadSuccess,
    required TResult Function(String exception) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(FlavorModel flavor)? loadSuccess,
    TResult? Function(String exception)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(FlavorModel flavor)? loadSuccess,
    TResult Function(String exception)? loadFailure,
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
    required TResult Function(FlavorInitial value) initial,
    required TResult Function(FlavorLoadInProgress value) loadInProgress,
    required TResult Function(FlavorLoadSuccess value) loadSuccess,
    required TResult Function(FlavorLoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FlavorInitial value)? initial,
    TResult? Function(FlavorLoadInProgress value)? loadInProgress,
    TResult? Function(FlavorLoadSuccess value)? loadSuccess,
    TResult? Function(FlavorLoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FlavorInitial value)? initial,
    TResult Function(FlavorLoadInProgress value)? loadInProgress,
    TResult Function(FlavorLoadSuccess value)? loadSuccess,
    TResult Function(FlavorLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FlavorInitial implements FlavorState {
  const factory FlavorInitial() = _$FlavorInitialImpl;
}

/// @nodoc
abstract class _$$FlavorLoadInProgressImplCopyWith<$Res> {
  factory _$$FlavorLoadInProgressImplCopyWith(_$FlavorLoadInProgressImpl value,
          $Res Function(_$FlavorLoadInProgressImpl) then) =
      __$$FlavorLoadInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FlavorLoadInProgressImplCopyWithImpl<$Res>
    extends _$FlavorStateCopyWithImpl<$Res, _$FlavorLoadInProgressImpl>
    implements _$$FlavorLoadInProgressImplCopyWith<$Res> {
  __$$FlavorLoadInProgressImplCopyWithImpl(_$FlavorLoadInProgressImpl _value,
      $Res Function(_$FlavorLoadInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FlavorLoadInProgressImpl
    with DiagnosticableTreeMixin
    implements FlavorLoadInProgress {
  const _$FlavorLoadInProgressImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FlavorState.loadInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'FlavorState.loadInProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlavorLoadInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(FlavorModel flavor) loadSuccess,
    required TResult Function(String exception) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(FlavorModel flavor)? loadSuccess,
    TResult? Function(String exception)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(FlavorModel flavor)? loadSuccess,
    TResult Function(String exception)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FlavorInitial value) initial,
    required TResult Function(FlavorLoadInProgress value) loadInProgress,
    required TResult Function(FlavorLoadSuccess value) loadSuccess,
    required TResult Function(FlavorLoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FlavorInitial value)? initial,
    TResult? Function(FlavorLoadInProgress value)? loadInProgress,
    TResult? Function(FlavorLoadSuccess value)? loadSuccess,
    TResult? Function(FlavorLoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FlavorInitial value)? initial,
    TResult Function(FlavorLoadInProgress value)? loadInProgress,
    TResult Function(FlavorLoadSuccess value)? loadSuccess,
    TResult Function(FlavorLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class FlavorLoadInProgress implements FlavorState {
  const factory FlavorLoadInProgress() = _$FlavorLoadInProgressImpl;
}

/// @nodoc
abstract class _$$FlavorLoadSuccessImplCopyWith<$Res> {
  factory _$$FlavorLoadSuccessImplCopyWith(_$FlavorLoadSuccessImpl value,
          $Res Function(_$FlavorLoadSuccessImpl) then) =
      __$$FlavorLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FlavorModel flavor});
}

/// @nodoc
class __$$FlavorLoadSuccessImplCopyWithImpl<$Res>
    extends _$FlavorStateCopyWithImpl<$Res, _$FlavorLoadSuccessImpl>
    implements _$$FlavorLoadSuccessImplCopyWith<$Res> {
  __$$FlavorLoadSuccessImplCopyWithImpl(_$FlavorLoadSuccessImpl _value,
      $Res Function(_$FlavorLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavor = null,
  }) {
    return _then(_$FlavorLoadSuccessImpl(
      null == flavor
          ? _value.flavor
          : flavor // ignore: cast_nullable_to_non_nullable
              as FlavorModel,
    ));
  }
}

/// @nodoc

class _$FlavorLoadSuccessImpl
    with DiagnosticableTreeMixin
    implements FlavorLoadSuccess {
  const _$FlavorLoadSuccessImpl(this.flavor);

  @override
  final FlavorModel flavor;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FlavorState.loadSuccess(flavor: $flavor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FlavorState.loadSuccess'))
      ..add(DiagnosticsProperty('flavor', flavor));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlavorLoadSuccessImpl &&
            (identical(other.flavor, flavor) || other.flavor == flavor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flavor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlavorLoadSuccessImplCopyWith<_$FlavorLoadSuccessImpl> get copyWith =>
      __$$FlavorLoadSuccessImplCopyWithImpl<_$FlavorLoadSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(FlavorModel flavor) loadSuccess,
    required TResult Function(String exception) loadFailure,
  }) {
    return loadSuccess(flavor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(FlavorModel flavor)? loadSuccess,
    TResult? Function(String exception)? loadFailure,
  }) {
    return loadSuccess?.call(flavor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(FlavorModel flavor)? loadSuccess,
    TResult Function(String exception)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(flavor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FlavorInitial value) initial,
    required TResult Function(FlavorLoadInProgress value) loadInProgress,
    required TResult Function(FlavorLoadSuccess value) loadSuccess,
    required TResult Function(FlavorLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FlavorInitial value)? initial,
    TResult? Function(FlavorLoadInProgress value)? loadInProgress,
    TResult? Function(FlavorLoadSuccess value)? loadSuccess,
    TResult? Function(FlavorLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FlavorInitial value)? initial,
    TResult Function(FlavorLoadInProgress value)? loadInProgress,
    TResult Function(FlavorLoadSuccess value)? loadSuccess,
    TResult Function(FlavorLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class FlavorLoadSuccess implements FlavorState {
  const factory FlavorLoadSuccess(final FlavorModel flavor) =
      _$FlavorLoadSuccessImpl;

  FlavorModel get flavor;
  @JsonKey(ignore: true)
  _$$FlavorLoadSuccessImplCopyWith<_$FlavorLoadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FlavorLoadFailureImplCopyWith<$Res> {
  factory _$$FlavorLoadFailureImplCopyWith(_$FlavorLoadFailureImpl value,
          $Res Function(_$FlavorLoadFailureImpl) then) =
      __$$FlavorLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String exception});
}

/// @nodoc
class __$$FlavorLoadFailureImplCopyWithImpl<$Res>
    extends _$FlavorStateCopyWithImpl<$Res, _$FlavorLoadFailureImpl>
    implements _$$FlavorLoadFailureImplCopyWith<$Res> {
  __$$FlavorLoadFailureImplCopyWithImpl(_$FlavorLoadFailureImpl _value,
      $Res Function(_$FlavorLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$FlavorLoadFailureImpl(
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FlavorLoadFailureImpl
    with DiagnosticableTreeMixin
    implements FlavorLoadFailure {
  const _$FlavorLoadFailureImpl({required this.exception});

  @override
  final String exception;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FlavorState.loadFailure(exception: $exception)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FlavorState.loadFailure'))
      ..add(DiagnosticsProperty('exception', exception));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlavorLoadFailureImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlavorLoadFailureImplCopyWith<_$FlavorLoadFailureImpl> get copyWith =>
      __$$FlavorLoadFailureImplCopyWithImpl<_$FlavorLoadFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(FlavorModel flavor) loadSuccess,
    required TResult Function(String exception) loadFailure,
  }) {
    return loadFailure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(FlavorModel flavor)? loadSuccess,
    TResult? Function(String exception)? loadFailure,
  }) {
    return loadFailure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(FlavorModel flavor)? loadSuccess,
    TResult Function(String exception)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FlavorInitial value) initial,
    required TResult Function(FlavorLoadInProgress value) loadInProgress,
    required TResult Function(FlavorLoadSuccess value) loadSuccess,
    required TResult Function(FlavorLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FlavorInitial value)? initial,
    TResult? Function(FlavorLoadInProgress value)? loadInProgress,
    TResult? Function(FlavorLoadSuccess value)? loadSuccess,
    TResult? Function(FlavorLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FlavorInitial value)? initial,
    TResult Function(FlavorLoadInProgress value)? loadInProgress,
    TResult Function(FlavorLoadSuccess value)? loadSuccess,
    TResult Function(FlavorLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class FlavorLoadFailure implements FlavorState {
  const factory FlavorLoadFailure({required final String exception}) =
      _$FlavorLoadFailureImpl;

  String get exception;
  @JsonKey(ignore: true)
  _$$FlavorLoadFailureImplCopyWith<_$FlavorLoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
