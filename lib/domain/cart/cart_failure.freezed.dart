// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartFailureTearOff {
  const _$CartFailureTearOff();

  UnexpectedFailure unexpectedFailure() {
    return const UnexpectedFailure();
  }

  NetworkFailure networkFailure() {
    return const NetworkFailure();
  }

  CustomFailure customFailure({required String failure}) {
    return CustomFailure(
      failure: failure,
    );
  }
}

/// @nodoc
const $CartFailure = _$CartFailureTearOff();

/// @nodoc
mixin _$CartFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpectedFailure,
    required TResult Function() networkFailure,
    required TResult Function(String failure) customFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpectedFailure,
    TResult Function()? networkFailure,
    TResult Function(String failure)? customFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpectedFailure,
    TResult Function()? networkFailure,
    TResult Function(String failure)? customFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnexpectedFailure value) unexpectedFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CustomFailure value) customFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnexpectedFailure value)? unexpectedFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CustomFailure value)? customFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedFailure value)? unexpectedFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CustomFailure value)? customFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartFailureCopyWith<$Res> {
  factory $CartFailureCopyWith(
          CartFailure value, $Res Function(CartFailure) then) =
      _$CartFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartFailureCopyWithImpl<$Res> implements $CartFailureCopyWith<$Res> {
  _$CartFailureCopyWithImpl(this._value, this._then);

  final CartFailure _value;
  // ignore: unused_field
  final $Res Function(CartFailure) _then;
}

/// @nodoc
abstract class $UnexpectedFailureCopyWith<$Res> {
  factory $UnexpectedFailureCopyWith(
          UnexpectedFailure value, $Res Function(UnexpectedFailure) then) =
      _$UnexpectedFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnexpectedFailureCopyWithImpl<$Res>
    extends _$CartFailureCopyWithImpl<$Res>
    implements $UnexpectedFailureCopyWith<$Res> {
  _$UnexpectedFailureCopyWithImpl(
      UnexpectedFailure _value, $Res Function(UnexpectedFailure) _then)
      : super(_value, (v) => _then(v as UnexpectedFailure));

  @override
  UnexpectedFailure get _value => super._value as UnexpectedFailure;
}

/// @nodoc

class _$UnexpectedFailure implements UnexpectedFailure {
  const _$UnexpectedFailure();

  @override
  String toString() {
    return 'CartFailure.unexpectedFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UnexpectedFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpectedFailure,
    required TResult Function() networkFailure,
    required TResult Function(String failure) customFailure,
  }) {
    return unexpectedFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpectedFailure,
    TResult Function()? networkFailure,
    TResult Function(String failure)? customFailure,
  }) {
    return unexpectedFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpectedFailure,
    TResult Function()? networkFailure,
    TResult Function(String failure)? customFailure,
    required TResult orElse(),
  }) {
    if (unexpectedFailure != null) {
      return unexpectedFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnexpectedFailure value) unexpectedFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CustomFailure value) customFailure,
  }) {
    return unexpectedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnexpectedFailure value)? unexpectedFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CustomFailure value)? customFailure,
  }) {
    return unexpectedFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedFailure value)? unexpectedFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CustomFailure value)? customFailure,
    required TResult orElse(),
  }) {
    if (unexpectedFailure != null) {
      return unexpectedFailure(this);
    }
    return orElse();
  }
}

abstract class UnexpectedFailure implements CartFailure {
  const factory UnexpectedFailure() = _$UnexpectedFailure;
}

/// @nodoc
abstract class $NetworkFailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(
          NetworkFailure value, $Res Function(NetworkFailure) then) =
      _$NetworkFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res> extends _$CartFailureCopyWithImpl<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(
      NetworkFailure _value, $Res Function(NetworkFailure) _then)
      : super(_value, (v) => _then(v as NetworkFailure));

  @override
  NetworkFailure get _value => super._value as NetworkFailure;
}

/// @nodoc

class _$NetworkFailure implements NetworkFailure {
  const _$NetworkFailure();

  @override
  String toString() {
    return 'CartFailure.networkFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NetworkFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpectedFailure,
    required TResult Function() networkFailure,
    required TResult Function(String failure) customFailure,
  }) {
    return networkFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpectedFailure,
    TResult Function()? networkFailure,
    TResult Function(String failure)? customFailure,
  }) {
    return networkFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpectedFailure,
    TResult Function()? networkFailure,
    TResult Function(String failure)? customFailure,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnexpectedFailure value) unexpectedFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CustomFailure value) customFailure,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnexpectedFailure value)? unexpectedFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CustomFailure value)? customFailure,
  }) {
    return networkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedFailure value)? unexpectedFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CustomFailure value)? customFailure,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class NetworkFailure implements CartFailure {
  const factory NetworkFailure() = _$NetworkFailure;
}

/// @nodoc
abstract class $CustomFailureCopyWith<$Res> {
  factory $CustomFailureCopyWith(
          CustomFailure value, $Res Function(CustomFailure) then) =
      _$CustomFailureCopyWithImpl<$Res>;
  $Res call({String failure});
}

/// @nodoc
class _$CustomFailureCopyWithImpl<$Res> extends _$CartFailureCopyWithImpl<$Res>
    implements $CustomFailureCopyWith<$Res> {
  _$CustomFailureCopyWithImpl(
      CustomFailure _value, $Res Function(CustomFailure) _then)
      : super(_value, (v) => _then(v as CustomFailure));

  @override
  CustomFailure get _value => super._value as CustomFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(CustomFailure(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CustomFailure implements CustomFailure {
  const _$CustomFailure({required this.failure});

  @override
  final String failure;

  @override
  String toString() {
    return 'CartFailure.customFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  $CustomFailureCopyWith<CustomFailure> get copyWith =>
      _$CustomFailureCopyWithImpl<CustomFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpectedFailure,
    required TResult Function() networkFailure,
    required TResult Function(String failure) customFailure,
  }) {
    return customFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpectedFailure,
    TResult Function()? networkFailure,
    TResult Function(String failure)? customFailure,
  }) {
    return customFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpectedFailure,
    TResult Function()? networkFailure,
    TResult Function(String failure)? customFailure,
    required TResult orElse(),
  }) {
    if (customFailure != null) {
      return customFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnexpectedFailure value) unexpectedFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CustomFailure value) customFailure,
  }) {
    return customFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnexpectedFailure value)? unexpectedFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CustomFailure value)? customFailure,
  }) {
    return customFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedFailure value)? unexpectedFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CustomFailure value)? customFailure,
    required TResult orElse(),
  }) {
    if (customFailure != null) {
      return customFailure(this);
    }
    return orElse();
  }
}

abstract class CustomFailure implements CartFailure {
  const factory CustomFailure({required String failure}) = _$CustomFailure;

  String get failure;
  @JsonKey(ignore: true)
  $CustomFailureCopyWith<CustomFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
