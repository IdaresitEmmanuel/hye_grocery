// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserFailureTearOff {
  const _$UserFailureTearOff();

  NetworkFailure networkFailure() {
    return const NetworkFailure();
  }

  UserDoesNotExist userDoesNotExist() {
    return const UserDoesNotExist();
  }
}

/// @nodoc
const $UserFailure = _$UserFailureTearOff();

/// @nodoc
mixin _$UserFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkFailure,
    required TResult Function() userDoesNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? networkFailure,
    TResult Function()? userDoesNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkFailure,
    TResult Function()? userDoesNotExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(UserDoesNotExist value) userDoesNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(UserDoesNotExist value)? userDoesNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(UserDoesNotExist value)? userDoesNotExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFailureCopyWith<$Res> {
  factory $UserFailureCopyWith(
          UserFailure value, $Res Function(UserFailure) then) =
      _$UserFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserFailureCopyWithImpl<$Res> implements $UserFailureCopyWith<$Res> {
  _$UserFailureCopyWithImpl(this._value, this._then);

  final UserFailure _value;
  // ignore: unused_field
  final $Res Function(UserFailure) _then;
}

/// @nodoc
abstract class $NetworkFailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(
          NetworkFailure value, $Res Function(NetworkFailure) then) =
      _$NetworkFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res> extends _$UserFailureCopyWithImpl<$Res>
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
    return 'UserFailure.networkFailure()';
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
    required TResult Function() networkFailure,
    required TResult Function() userDoesNotExist,
  }) {
    return networkFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? networkFailure,
    TResult Function()? userDoesNotExist,
  }) {
    return networkFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkFailure,
    TResult Function()? userDoesNotExist,
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
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(UserDoesNotExist value) userDoesNotExist,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(UserDoesNotExist value)? userDoesNotExist,
  }) {
    return networkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(UserDoesNotExist value)? userDoesNotExist,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class NetworkFailure implements UserFailure {
  const factory NetworkFailure() = _$NetworkFailure;
}

/// @nodoc
abstract class $UserDoesNotExistCopyWith<$Res> {
  factory $UserDoesNotExistCopyWith(
          UserDoesNotExist value, $Res Function(UserDoesNotExist) then) =
      _$UserDoesNotExistCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserDoesNotExistCopyWithImpl<$Res>
    extends _$UserFailureCopyWithImpl<$Res>
    implements $UserDoesNotExistCopyWith<$Res> {
  _$UserDoesNotExistCopyWithImpl(
      UserDoesNotExist _value, $Res Function(UserDoesNotExist) _then)
      : super(_value, (v) => _then(v as UserDoesNotExist));

  @override
  UserDoesNotExist get _value => super._value as UserDoesNotExist;
}

/// @nodoc

class _$UserDoesNotExist implements UserDoesNotExist {
  const _$UserDoesNotExist();

  @override
  String toString() {
    return 'UserFailure.userDoesNotExist()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserDoesNotExist);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkFailure,
    required TResult Function() userDoesNotExist,
  }) {
    return userDoesNotExist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? networkFailure,
    TResult Function()? userDoesNotExist,
  }) {
    return userDoesNotExist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkFailure,
    TResult Function()? userDoesNotExist,
    required TResult orElse(),
  }) {
    if (userDoesNotExist != null) {
      return userDoesNotExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(UserDoesNotExist value) userDoesNotExist,
  }) {
    return userDoesNotExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(UserDoesNotExist value)? userDoesNotExist,
  }) {
    return userDoesNotExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(UserDoesNotExist value)? userDoesNotExist,
    required TResult orElse(),
  }) {
    if (userDoesNotExist != null) {
      return userDoesNotExist(this);
    }
    return orElse();
  }
}

abstract class UserDoesNotExist implements UserFailure {
  const factory UserDoesNotExist() = _$UserDoesNotExist;
}
