// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homeInitial,
    required TResult Function() homeLoading,
    required TResult Function(
            SpecializationsResponseModel specializationsResponseModel)
        homeSuccess,
    required TResult Function(ErrorHandler errorHandler) homeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? homeInitial,
    TResult? Function()? homeLoading,
    TResult? Function(
            SpecializationsResponseModel specializationsResponseModel)?
        homeSuccess,
    TResult? Function(ErrorHandler errorHandler)? homeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeInitial,
    TResult Function()? homeLoading,
    TResult Function(SpecializationsResponseModel specializationsResponseModel)?
        homeSuccess,
    TResult Function(ErrorHandler errorHandler)? homeError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitial<T> value) homeInitial,
    required TResult Function(HomeLoading<T> value) homeLoading,
    required TResult Function(HomeSuccess<T> value) homeSuccess,
    required TResult Function(HomeError<T> value) homeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitial<T> value)? homeInitial,
    TResult? Function(HomeLoading<T> value)? homeLoading,
    TResult? Function(HomeSuccess<T> value)? homeSuccess,
    TResult? Function(HomeError<T> value)? homeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitial<T> value)? homeInitial,
    TResult Function(HomeLoading<T> value)? homeLoading,
    TResult Function(HomeSuccess<T> value)? homeSuccess,
    TResult Function(HomeError<T> value)? homeError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<T, $Res> {
  factory $HomeStateCopyWith(
          HomeState<T> value, $Res Function(HomeState<T>) then) =
      _$HomeStateCopyWithImpl<T, $Res, HomeState<T>>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<T, $Res, $Val extends HomeState<T>>
    implements $HomeStateCopyWith<T, $Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomeInitialImplCopyWith<T, $Res> {
  factory _$$HomeInitialImplCopyWith(_$HomeInitialImpl<T> value,
          $Res Function(_$HomeInitialImpl<T>) then) =
      __$$HomeInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$HomeInitialImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$HomeInitialImpl<T>>
    implements _$$HomeInitialImplCopyWith<T, $Res> {
  __$$HomeInitialImplCopyWithImpl(
      _$HomeInitialImpl<T> _value, $Res Function(_$HomeInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeInitialImpl<T> implements _HomeInitial<T> {
  const _$HomeInitialImpl();

  @override
  String toString() {
    return 'HomeState<$T>.homeInitial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homeInitial,
    required TResult Function() homeLoading,
    required TResult Function(
            SpecializationsResponseModel specializationsResponseModel)
        homeSuccess,
    required TResult Function(ErrorHandler errorHandler) homeError,
  }) {
    return homeInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? homeInitial,
    TResult? Function()? homeLoading,
    TResult? Function(
            SpecializationsResponseModel specializationsResponseModel)?
        homeSuccess,
    TResult? Function(ErrorHandler errorHandler)? homeError,
  }) {
    return homeInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeInitial,
    TResult Function()? homeLoading,
    TResult Function(SpecializationsResponseModel specializationsResponseModel)?
        homeSuccess,
    TResult Function(ErrorHandler errorHandler)? homeError,
    required TResult orElse(),
  }) {
    if (homeInitial != null) {
      return homeInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitial<T> value) homeInitial,
    required TResult Function(HomeLoading<T> value) homeLoading,
    required TResult Function(HomeSuccess<T> value) homeSuccess,
    required TResult Function(HomeError<T> value) homeError,
  }) {
    return homeInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitial<T> value)? homeInitial,
    TResult? Function(HomeLoading<T> value)? homeLoading,
    TResult? Function(HomeSuccess<T> value)? homeSuccess,
    TResult? Function(HomeError<T> value)? homeError,
  }) {
    return homeInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitial<T> value)? homeInitial,
    TResult Function(HomeLoading<T> value)? homeLoading,
    TResult Function(HomeSuccess<T> value)? homeSuccess,
    TResult Function(HomeError<T> value)? homeError,
    required TResult orElse(),
  }) {
    if (homeInitial != null) {
      return homeInitial(this);
    }
    return orElse();
  }
}

abstract class _HomeInitial<T> implements HomeState<T> {
  const factory _HomeInitial() = _$HomeInitialImpl<T>;
}

/// @nodoc
abstract class _$$HomeLoadingImplCopyWith<T, $Res> {
  factory _$$HomeLoadingImplCopyWith(_$HomeLoadingImpl<T> value,
          $Res Function(_$HomeLoadingImpl<T>) then) =
      __$$HomeLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$HomeLoadingImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$HomeLoadingImpl<T>>
    implements _$$HomeLoadingImplCopyWith<T, $Res> {
  __$$HomeLoadingImplCopyWithImpl(
      _$HomeLoadingImpl<T> _value, $Res Function(_$HomeLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeLoadingImpl<T> implements HomeLoading<T> {
  const _$HomeLoadingImpl();

  @override
  String toString() {
    return 'HomeState<$T>.homeLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homeInitial,
    required TResult Function() homeLoading,
    required TResult Function(
            SpecializationsResponseModel specializationsResponseModel)
        homeSuccess,
    required TResult Function(ErrorHandler errorHandler) homeError,
  }) {
    return homeLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? homeInitial,
    TResult? Function()? homeLoading,
    TResult? Function(
            SpecializationsResponseModel specializationsResponseModel)?
        homeSuccess,
    TResult? Function(ErrorHandler errorHandler)? homeError,
  }) {
    return homeLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeInitial,
    TResult Function()? homeLoading,
    TResult Function(SpecializationsResponseModel specializationsResponseModel)?
        homeSuccess,
    TResult Function(ErrorHandler errorHandler)? homeError,
    required TResult orElse(),
  }) {
    if (homeLoading != null) {
      return homeLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitial<T> value) homeInitial,
    required TResult Function(HomeLoading<T> value) homeLoading,
    required TResult Function(HomeSuccess<T> value) homeSuccess,
    required TResult Function(HomeError<T> value) homeError,
  }) {
    return homeLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitial<T> value)? homeInitial,
    TResult? Function(HomeLoading<T> value)? homeLoading,
    TResult? Function(HomeSuccess<T> value)? homeSuccess,
    TResult? Function(HomeError<T> value)? homeError,
  }) {
    return homeLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitial<T> value)? homeInitial,
    TResult Function(HomeLoading<T> value)? homeLoading,
    TResult Function(HomeSuccess<T> value)? homeSuccess,
    TResult Function(HomeError<T> value)? homeError,
    required TResult orElse(),
  }) {
    if (homeLoading != null) {
      return homeLoading(this);
    }
    return orElse();
  }
}

abstract class HomeLoading<T> implements HomeState<T> {
  const factory HomeLoading() = _$HomeLoadingImpl<T>;
}

/// @nodoc
abstract class _$$HomeSuccessImplCopyWith<T, $Res> {
  factory _$$HomeSuccessImplCopyWith(_$HomeSuccessImpl<T> value,
          $Res Function(_$HomeSuccessImpl<T>) then) =
      __$$HomeSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({SpecializationsResponseModel specializationsResponseModel});
}

/// @nodoc
class __$$HomeSuccessImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$HomeSuccessImpl<T>>
    implements _$$HomeSuccessImplCopyWith<T, $Res> {
  __$$HomeSuccessImplCopyWithImpl(
      _$HomeSuccessImpl<T> _value, $Res Function(_$HomeSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specializationsResponseModel = null,
  }) {
    return _then(_$HomeSuccessImpl<T>(
      null == specializationsResponseModel
          ? _value.specializationsResponseModel
          : specializationsResponseModel // ignore: cast_nullable_to_non_nullable
              as SpecializationsResponseModel,
    ));
  }
}

/// @nodoc

class _$HomeSuccessImpl<T> implements HomeSuccess<T> {
  const _$HomeSuccessImpl(this.specializationsResponseModel);

  @override
  final SpecializationsResponseModel specializationsResponseModel;

  @override
  String toString() {
    return 'HomeState<$T>.homeSuccess(specializationsResponseModel: $specializationsResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeSuccessImpl<T> &&
            (identical(other.specializationsResponseModel,
                    specializationsResponseModel) ||
                other.specializationsResponseModel ==
                    specializationsResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, specializationsResponseModel);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeSuccessImplCopyWith<T, _$HomeSuccessImpl<T>> get copyWith =>
      __$$HomeSuccessImplCopyWithImpl<T, _$HomeSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homeInitial,
    required TResult Function() homeLoading,
    required TResult Function(
            SpecializationsResponseModel specializationsResponseModel)
        homeSuccess,
    required TResult Function(ErrorHandler errorHandler) homeError,
  }) {
    return homeSuccess(specializationsResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? homeInitial,
    TResult? Function()? homeLoading,
    TResult? Function(
            SpecializationsResponseModel specializationsResponseModel)?
        homeSuccess,
    TResult? Function(ErrorHandler errorHandler)? homeError,
  }) {
    return homeSuccess?.call(specializationsResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeInitial,
    TResult Function()? homeLoading,
    TResult Function(SpecializationsResponseModel specializationsResponseModel)?
        homeSuccess,
    TResult Function(ErrorHandler errorHandler)? homeError,
    required TResult orElse(),
  }) {
    if (homeSuccess != null) {
      return homeSuccess(specializationsResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitial<T> value) homeInitial,
    required TResult Function(HomeLoading<T> value) homeLoading,
    required TResult Function(HomeSuccess<T> value) homeSuccess,
    required TResult Function(HomeError<T> value) homeError,
  }) {
    return homeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitial<T> value)? homeInitial,
    TResult? Function(HomeLoading<T> value)? homeLoading,
    TResult? Function(HomeSuccess<T> value)? homeSuccess,
    TResult? Function(HomeError<T> value)? homeError,
  }) {
    return homeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitial<T> value)? homeInitial,
    TResult Function(HomeLoading<T> value)? homeLoading,
    TResult Function(HomeSuccess<T> value)? homeSuccess,
    TResult Function(HomeError<T> value)? homeError,
    required TResult orElse(),
  }) {
    if (homeSuccess != null) {
      return homeSuccess(this);
    }
    return orElse();
  }
}

abstract class HomeSuccess<T> implements HomeState<T> {
  const factory HomeSuccess(
          final SpecializationsResponseModel specializationsResponseModel) =
      _$HomeSuccessImpl<T>;

  SpecializationsResponseModel get specializationsResponseModel;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeSuccessImplCopyWith<T, _$HomeSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeErrorImplCopyWith<T, $Res> {
  factory _$$HomeErrorImplCopyWith(
          _$HomeErrorImpl<T> value, $Res Function(_$HomeErrorImpl<T>) then) =
      __$$HomeErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class __$$HomeErrorImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$HomeErrorImpl<T>>
    implements _$$HomeErrorImplCopyWith<T, $Res> {
  __$$HomeErrorImplCopyWithImpl(
      _$HomeErrorImpl<T> _value, $Res Function(_$HomeErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(_$HomeErrorImpl<T>(
      null == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$HomeErrorImpl<T> implements HomeError<T> {
  const _$HomeErrorImpl(this.errorHandler);

  @override
  final ErrorHandler errorHandler;

  @override
  String toString() {
    return 'HomeState<$T>.homeError(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeErrorImpl<T> &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeErrorImplCopyWith<T, _$HomeErrorImpl<T>> get copyWith =>
      __$$HomeErrorImplCopyWithImpl<T, _$HomeErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homeInitial,
    required TResult Function() homeLoading,
    required TResult Function(
            SpecializationsResponseModel specializationsResponseModel)
        homeSuccess,
    required TResult Function(ErrorHandler errorHandler) homeError,
  }) {
    return homeError(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? homeInitial,
    TResult? Function()? homeLoading,
    TResult? Function(
            SpecializationsResponseModel specializationsResponseModel)?
        homeSuccess,
    TResult? Function(ErrorHandler errorHandler)? homeError,
  }) {
    return homeError?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeInitial,
    TResult Function()? homeLoading,
    TResult Function(SpecializationsResponseModel specializationsResponseModel)?
        homeSuccess,
    TResult Function(ErrorHandler errorHandler)? homeError,
    required TResult orElse(),
  }) {
    if (homeError != null) {
      return homeError(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitial<T> value) homeInitial,
    required TResult Function(HomeLoading<T> value) homeLoading,
    required TResult Function(HomeSuccess<T> value) homeSuccess,
    required TResult Function(HomeError<T> value) homeError,
  }) {
    return homeError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitial<T> value)? homeInitial,
    TResult? Function(HomeLoading<T> value)? homeLoading,
    TResult? Function(HomeSuccess<T> value)? homeSuccess,
    TResult? Function(HomeError<T> value)? homeError,
  }) {
    return homeError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitial<T> value)? homeInitial,
    TResult Function(HomeLoading<T> value)? homeLoading,
    TResult Function(HomeSuccess<T> value)? homeSuccess,
    TResult Function(HomeError<T> value)? homeError,
    required TResult orElse(),
  }) {
    if (homeError != null) {
      return homeError(this);
    }
    return orElse();
  }
}

abstract class HomeError<T> implements HomeState<T> {
  const factory HomeError(final ErrorHandler errorHandler) = _$HomeErrorImpl<T>;

  ErrorHandler get errorHandler;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeErrorImplCopyWith<T, _$HomeErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
