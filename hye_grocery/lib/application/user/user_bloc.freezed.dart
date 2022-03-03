// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserEventTearOff {
  const _$UserEventTearOff();

  CreateOrUpdateUser createOrUpdateUser(
      {required UserName username, required PhoneNumber phoneNumber}) {
    return CreateOrUpdateUser(
      username: username,
      phoneNumber: phoneNumber,
    );
  }

  DeleteUser deleteUser() {
    return const DeleteUser();
  }
}

/// @nodoc
const $UserEvent = _$UserEventTearOff();

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserName username, PhoneNumber phoneNumber)
        createOrUpdateUser,
    required TResult Function() deleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserName username, PhoneNumber phoneNumber)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserName username, PhoneNumber phoneNumber)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateOrUpdateUser value) createOrUpdateUser,
    required TResult Function(DeleteUser value) deleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res> implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent _value;
  // ignore: unused_field
  final $Res Function(UserEvent) _then;
}

/// @nodoc
abstract class $CreateOrUpdateUserCopyWith<$Res> {
  factory $CreateOrUpdateUserCopyWith(
          CreateOrUpdateUser value, $Res Function(CreateOrUpdateUser) then) =
      _$CreateOrUpdateUserCopyWithImpl<$Res>;
  $Res call({UserName username, PhoneNumber phoneNumber});
}

/// @nodoc
class _$CreateOrUpdateUserCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $CreateOrUpdateUserCopyWith<$Res> {
  _$CreateOrUpdateUserCopyWithImpl(
      CreateOrUpdateUser _value, $Res Function(CreateOrUpdateUser) _then)
      : super(_value, (v) => _then(v as CreateOrUpdateUser));

  @override
  CreateOrUpdateUser get _value => super._value as CreateOrUpdateUser;

  @override
  $Res call({
    Object? username = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(CreateOrUpdateUser(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as UserName,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
    ));
  }
}

/// @nodoc

class _$CreateOrUpdateUser implements CreateOrUpdateUser {
  const _$CreateOrUpdateUser(
      {required this.username, required this.phoneNumber});

  @override
  final UserName username;
  @override
  final PhoneNumber phoneNumber;

  @override
  String toString() {
    return 'UserEvent.createOrUpdateUser(username: $username, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateOrUpdateUser &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  $CreateOrUpdateUserCopyWith<CreateOrUpdateUser> get copyWith =>
      _$CreateOrUpdateUserCopyWithImpl<CreateOrUpdateUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserName username, PhoneNumber phoneNumber)
        createOrUpdateUser,
    required TResult Function() deleteUser,
  }) {
    return createOrUpdateUser(username, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserName username, PhoneNumber phoneNumber)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
  }) {
    return createOrUpdateUser?.call(username, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserName username, PhoneNumber phoneNumber)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
    required TResult orElse(),
  }) {
    if (createOrUpdateUser != null) {
      return createOrUpdateUser(username, phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateOrUpdateUser value) createOrUpdateUser,
    required TResult Function(DeleteUser value) deleteUser,
  }) {
    return createOrUpdateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
  }) {
    return createOrUpdateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) {
    if (createOrUpdateUser != null) {
      return createOrUpdateUser(this);
    }
    return orElse();
  }
}

abstract class CreateOrUpdateUser implements UserEvent {
  const factory CreateOrUpdateUser(
      {required UserName username,
      required PhoneNumber phoneNumber}) = _$CreateOrUpdateUser;

  UserName get username;
  PhoneNumber get phoneNumber;
  @JsonKey(ignore: true)
  $CreateOrUpdateUserCopyWith<CreateOrUpdateUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteUserCopyWith<$Res> {
  factory $DeleteUserCopyWith(
          DeleteUser value, $Res Function(DeleteUser) then) =
      _$DeleteUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeleteUserCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $DeleteUserCopyWith<$Res> {
  _$DeleteUserCopyWithImpl(DeleteUser _value, $Res Function(DeleteUser) _then)
      : super(_value, (v) => _then(v as DeleteUser));

  @override
  DeleteUser get _value => super._value as DeleteUser;
}

/// @nodoc

class _$DeleteUser implements DeleteUser {
  const _$DeleteUser();

  @override
  String toString() {
    return 'UserEvent.deleteUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeleteUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserName username, PhoneNumber phoneNumber)
        createOrUpdateUser,
    required TResult Function() deleteUser,
  }) {
    return deleteUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserName username, PhoneNumber phoneNumber)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
  }) {
    return deleteUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserName username, PhoneNumber phoneNumber)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateOrUpdateUser value) createOrUpdateUser,
    required TResult Function(DeleteUser value) deleteUser,
  }) {
    return deleteUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
  }) {
    return deleteUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(this);
    }
    return orElse();
  }
}

abstract class DeleteUser implements UserEvent {
  const factory DeleteUser() = _$DeleteUser;
}

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

  _UserState call({MyUser? signedInUser}) {
    return _UserState(
      signedInUser: signedInUser,
    );
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  MyUser? get signedInUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
  $Res call({MyUser? signedInUser});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;

  @override
  $Res call({
    Object? signedInUser = freezed,
  }) {
    return _then(_value.copyWith(
      signedInUser: signedInUser == freezed
          ? _value.signedInUser
          : signedInUser // ignore: cast_nullable_to_non_nullable
              as MyUser?,
    ));
  }
}

/// @nodoc
abstract class _$UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$UserStateCopyWith(
          _UserState value, $Res Function(_UserState) then) =
      __$UserStateCopyWithImpl<$Res>;
  @override
  $Res call({MyUser? signedInUser});
}

/// @nodoc
class __$UserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$UserStateCopyWith<$Res> {
  __$UserStateCopyWithImpl(_UserState _value, $Res Function(_UserState) _then)
      : super(_value, (v) => _then(v as _UserState));

  @override
  _UserState get _value => super._value as _UserState;

  @override
  $Res call({
    Object? signedInUser = freezed,
  }) {
    return _then(_UserState(
      signedInUser: signedInUser == freezed
          ? _value.signedInUser
          : signedInUser // ignore: cast_nullable_to_non_nullable
              as MyUser?,
    ));
  }
}

/// @nodoc

class _$_UserState implements _UserState {
  const _$_UserState({this.signedInUser});

  @override
  final MyUser? signedInUser;

  @override
  String toString() {
    return 'UserState(signedInUser: $signedInUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserState &&
            const DeepCollectionEquality()
                .equals(other.signedInUser, signedInUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(signedInUser));

  @JsonKey(ignore: true)
  @override
  _$UserStateCopyWith<_UserState> get copyWith =>
      __$UserStateCopyWithImpl<_UserState>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState({MyUser? signedInUser}) = _$_UserState;

  @override
  MyUser? get signedInUser;
  @override
  @JsonKey(ignore: true)
  _$UserStateCopyWith<_UserState> get copyWith =>
      throw _privateConstructorUsedError;
}
