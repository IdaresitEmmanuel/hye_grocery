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

  GetCurrentUser getCurrentUser() {
    return const GetCurrentUser();
  }

  CreateOrUpdateUser createOrUpdateUser(
      {UserName? username, PhoneNumber? phoneNumber}) {
    return CreateOrUpdateUser(
      username: username,
      phoneNumber: phoneNumber,
    );
  }

  DeleteUser deleteUser() {
    return const DeleteUser();
  }

  DeleteProfileImage deleteProfileImage(
      {required String imageStorageLocation}) {
    return DeleteProfileImage(
      imageStorageLocation: imageStorageLocation,
    );
  }

  UpdateProfileImage updateProfileImage(
      {required String fileName, required File file}) {
    return UpdateProfileImage(
      fileName: fileName,
      file: file,
    );
  }

  SetEditUsername setEditUsername(String value) {
    return SetEditUsername(
      value,
    );
  }

  SetEditPhonenumber setEditPhonenumber(String value) {
    return SetEditPhonenumber(
      value,
    );
  }

  RefreshEdit refreshEdit() {
    return const RefreshEdit();
  }
}

/// @nodoc
const $UserEvent = _$UserEventTearOff();

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(UserName? username, PhoneNumber? phoneNumber)
        createOrUpdateUser,
    required TResult Function() deleteUser,
    required TResult Function(String imageStorageLocation) deleteProfileImage,
    required TResult Function(String fileName, File file) updateProfileImage,
    required TResult Function(String value) setEditUsername,
    required TResult Function(String value) setEditPhonenumber,
    required TResult Function() refreshEdit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(UserName? username, PhoneNumber? phoneNumber)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? refreshEdit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(UserName? username, PhoneNumber? phoneNumber)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? refreshEdit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCurrentUser value) getCurrentUser,
    required TResult Function(CreateOrUpdateUser value) createOrUpdateUser,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(DeleteProfileImage value) deleteProfileImage,
    required TResult Function(UpdateProfileImage value) updateProfileImage,
    required TResult Function(SetEditUsername value) setEditUsername,
    required TResult Function(SetEditPhonenumber value) setEditPhonenumber,
    required TResult Function(RefreshEdit value) refreshEdit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCurrentUser value)? getCurrentUser,
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(RefreshEdit value)? refreshEdit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCurrentUser value)? getCurrentUser,
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(RefreshEdit value)? refreshEdit,
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
abstract class $GetCurrentUserCopyWith<$Res> {
  factory $GetCurrentUserCopyWith(
          GetCurrentUser value, $Res Function(GetCurrentUser) then) =
      _$GetCurrentUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCurrentUserCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $GetCurrentUserCopyWith<$Res> {
  _$GetCurrentUserCopyWithImpl(
      GetCurrentUser _value, $Res Function(GetCurrentUser) _then)
      : super(_value, (v) => _then(v as GetCurrentUser));

  @override
  GetCurrentUser get _value => super._value as GetCurrentUser;
}

/// @nodoc

class _$GetCurrentUser implements GetCurrentUser {
  const _$GetCurrentUser();

  @override
  String toString() {
    return 'UserEvent.getCurrentUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetCurrentUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(UserName? username, PhoneNumber? phoneNumber)
        createOrUpdateUser,
    required TResult Function() deleteUser,
    required TResult Function(String imageStorageLocation) deleteProfileImage,
    required TResult Function(String fileName, File file) updateProfileImage,
    required TResult Function(String value) setEditUsername,
    required TResult Function(String value) setEditPhonenumber,
    required TResult Function() refreshEdit,
  }) {
    return getCurrentUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(UserName? username, PhoneNumber? phoneNumber)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? refreshEdit,
  }) {
    return getCurrentUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(UserName? username, PhoneNumber? phoneNumber)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? refreshEdit,
    required TResult orElse(),
  }) {
    if (getCurrentUser != null) {
      return getCurrentUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCurrentUser value) getCurrentUser,
    required TResult Function(CreateOrUpdateUser value) createOrUpdateUser,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(DeleteProfileImage value) deleteProfileImage,
    required TResult Function(UpdateProfileImage value) updateProfileImage,
    required TResult Function(SetEditUsername value) setEditUsername,
    required TResult Function(SetEditPhonenumber value) setEditPhonenumber,
    required TResult Function(RefreshEdit value) refreshEdit,
  }) {
    return getCurrentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCurrentUser value)? getCurrentUser,
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(RefreshEdit value)? refreshEdit,
  }) {
    return getCurrentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCurrentUser value)? getCurrentUser,
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(RefreshEdit value)? refreshEdit,
    required TResult orElse(),
  }) {
    if (getCurrentUser != null) {
      return getCurrentUser(this);
    }
    return orElse();
  }
}

abstract class GetCurrentUser implements UserEvent {
  const factory GetCurrentUser() = _$GetCurrentUser;
}

/// @nodoc
abstract class $CreateOrUpdateUserCopyWith<$Res> {
  factory $CreateOrUpdateUserCopyWith(
          CreateOrUpdateUser value, $Res Function(CreateOrUpdateUser) then) =
      _$CreateOrUpdateUserCopyWithImpl<$Res>;
  $Res call({UserName? username, PhoneNumber? phoneNumber});
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
              as UserName?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber?,
    ));
  }
}

/// @nodoc

class _$CreateOrUpdateUser implements CreateOrUpdateUser {
  const _$CreateOrUpdateUser({this.username, this.phoneNumber});

  @override
  final UserName? username;
  @override
  final PhoneNumber? phoneNumber;

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
    required TResult Function() getCurrentUser,
    required TResult Function(UserName? username, PhoneNumber? phoneNumber)
        createOrUpdateUser,
    required TResult Function() deleteUser,
    required TResult Function(String imageStorageLocation) deleteProfileImage,
    required TResult Function(String fileName, File file) updateProfileImage,
    required TResult Function(String value) setEditUsername,
    required TResult Function(String value) setEditPhonenumber,
    required TResult Function() refreshEdit,
  }) {
    return createOrUpdateUser(username, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(UserName? username, PhoneNumber? phoneNumber)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? refreshEdit,
  }) {
    return createOrUpdateUser?.call(username, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(UserName? username, PhoneNumber? phoneNumber)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? refreshEdit,
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
    required TResult Function(GetCurrentUser value) getCurrentUser,
    required TResult Function(CreateOrUpdateUser value) createOrUpdateUser,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(DeleteProfileImage value) deleteProfileImage,
    required TResult Function(UpdateProfileImage value) updateProfileImage,
    required TResult Function(SetEditUsername value) setEditUsername,
    required TResult Function(SetEditPhonenumber value) setEditPhonenumber,
    required TResult Function(RefreshEdit value) refreshEdit,
  }) {
    return createOrUpdateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCurrentUser value)? getCurrentUser,
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(RefreshEdit value)? refreshEdit,
  }) {
    return createOrUpdateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCurrentUser value)? getCurrentUser,
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(RefreshEdit value)? refreshEdit,
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
      {UserName? username, PhoneNumber? phoneNumber}) = _$CreateOrUpdateUser;

  UserName? get username;
  PhoneNumber? get phoneNumber;
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
    required TResult Function() getCurrentUser,
    required TResult Function(UserName? username, PhoneNumber? phoneNumber)
        createOrUpdateUser,
    required TResult Function() deleteUser,
    required TResult Function(String imageStorageLocation) deleteProfileImage,
    required TResult Function(String fileName, File file) updateProfileImage,
    required TResult Function(String value) setEditUsername,
    required TResult Function(String value) setEditPhonenumber,
    required TResult Function() refreshEdit,
  }) {
    return deleteUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(UserName? username, PhoneNumber? phoneNumber)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? refreshEdit,
  }) {
    return deleteUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(UserName? username, PhoneNumber? phoneNumber)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? refreshEdit,
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
    required TResult Function(GetCurrentUser value) getCurrentUser,
    required TResult Function(CreateOrUpdateUser value) createOrUpdateUser,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(DeleteProfileImage value) deleteProfileImage,
    required TResult Function(UpdateProfileImage value) updateProfileImage,
    required TResult Function(SetEditUsername value) setEditUsername,
    required TResult Function(SetEditPhonenumber value) setEditPhonenumber,
    required TResult Function(RefreshEdit value) refreshEdit,
  }) {
    return deleteUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCurrentUser value)? getCurrentUser,
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(RefreshEdit value)? refreshEdit,
  }) {
    return deleteUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCurrentUser value)? getCurrentUser,
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(RefreshEdit value)? refreshEdit,
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
abstract class $DeleteProfileImageCopyWith<$Res> {
  factory $DeleteProfileImageCopyWith(
          DeleteProfileImage value, $Res Function(DeleteProfileImage) then) =
      _$DeleteProfileImageCopyWithImpl<$Res>;
  $Res call({String imageStorageLocation});
}

/// @nodoc
class _$DeleteProfileImageCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $DeleteProfileImageCopyWith<$Res> {
  _$DeleteProfileImageCopyWithImpl(
      DeleteProfileImage _value, $Res Function(DeleteProfileImage) _then)
      : super(_value, (v) => _then(v as DeleteProfileImage));

  @override
  DeleteProfileImage get _value => super._value as DeleteProfileImage;

  @override
  $Res call({
    Object? imageStorageLocation = freezed,
  }) {
    return _then(DeleteProfileImage(
      imageStorageLocation: imageStorageLocation == freezed
          ? _value.imageStorageLocation
          : imageStorageLocation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteProfileImage implements DeleteProfileImage {
  const _$DeleteProfileImage({required this.imageStorageLocation});

  @override
  final String imageStorageLocation;

  @override
  String toString() {
    return 'UserEvent.deleteProfileImage(imageStorageLocation: $imageStorageLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteProfileImage &&
            const DeepCollectionEquality()
                .equals(other.imageStorageLocation, imageStorageLocation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(imageStorageLocation));

  @JsonKey(ignore: true)
  @override
  $DeleteProfileImageCopyWith<DeleteProfileImage> get copyWith =>
      _$DeleteProfileImageCopyWithImpl<DeleteProfileImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(UserName? username, PhoneNumber? phoneNumber)
        createOrUpdateUser,
    required TResult Function() deleteUser,
    required TResult Function(String imageStorageLocation) deleteProfileImage,
    required TResult Function(String fileName, File file) updateProfileImage,
    required TResult Function(String value) setEditUsername,
    required TResult Function(String value) setEditPhonenumber,
    required TResult Function() refreshEdit,
  }) {
    return deleteProfileImage(imageStorageLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(UserName? username, PhoneNumber? phoneNumber)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? refreshEdit,
  }) {
    return deleteProfileImage?.call(imageStorageLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(UserName? username, PhoneNumber? phoneNumber)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? refreshEdit,
    required TResult orElse(),
  }) {
    if (deleteProfileImage != null) {
      return deleteProfileImage(imageStorageLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCurrentUser value) getCurrentUser,
    required TResult Function(CreateOrUpdateUser value) createOrUpdateUser,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(DeleteProfileImage value) deleteProfileImage,
    required TResult Function(UpdateProfileImage value) updateProfileImage,
    required TResult Function(SetEditUsername value) setEditUsername,
    required TResult Function(SetEditPhonenumber value) setEditPhonenumber,
    required TResult Function(RefreshEdit value) refreshEdit,
  }) {
    return deleteProfileImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCurrentUser value)? getCurrentUser,
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(RefreshEdit value)? refreshEdit,
  }) {
    return deleteProfileImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCurrentUser value)? getCurrentUser,
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(RefreshEdit value)? refreshEdit,
    required TResult orElse(),
  }) {
    if (deleteProfileImage != null) {
      return deleteProfileImage(this);
    }
    return orElse();
  }
}

abstract class DeleteProfileImage implements UserEvent {
  const factory DeleteProfileImage({required String imageStorageLocation}) =
      _$DeleteProfileImage;

  String get imageStorageLocation;
  @JsonKey(ignore: true)
  $DeleteProfileImageCopyWith<DeleteProfileImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileImageCopyWith<$Res> {
  factory $UpdateProfileImageCopyWith(
          UpdateProfileImage value, $Res Function(UpdateProfileImage) then) =
      _$UpdateProfileImageCopyWithImpl<$Res>;
  $Res call({String fileName, File file});
}

/// @nodoc
class _$UpdateProfileImageCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $UpdateProfileImageCopyWith<$Res> {
  _$UpdateProfileImageCopyWithImpl(
      UpdateProfileImage _value, $Res Function(UpdateProfileImage) _then)
      : super(_value, (v) => _then(v as UpdateProfileImage));

  @override
  UpdateProfileImage get _value => super._value as UpdateProfileImage;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? file = freezed,
  }) {
    return _then(UpdateProfileImage(
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$UpdateProfileImage implements UpdateProfileImage {
  const _$UpdateProfileImage({required this.fileName, required this.file});

  @override
  final String fileName;
  @override
  final File file;

  @override
  String toString() {
    return 'UserEvent.updateProfileImage(fileName: $fileName, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateProfileImage &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
            const DeepCollectionEquality().equals(other.file, file));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fileName),
      const DeepCollectionEquality().hash(file));

  @JsonKey(ignore: true)
  @override
  $UpdateProfileImageCopyWith<UpdateProfileImage> get copyWith =>
      _$UpdateProfileImageCopyWithImpl<UpdateProfileImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(UserName? username, PhoneNumber? phoneNumber)
        createOrUpdateUser,
    required TResult Function() deleteUser,
    required TResult Function(String imageStorageLocation) deleteProfileImage,
    required TResult Function(String fileName, File file) updateProfileImage,
    required TResult Function(String value) setEditUsername,
    required TResult Function(String value) setEditPhonenumber,
    required TResult Function() refreshEdit,
  }) {
    return updateProfileImage(fileName, file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(UserName? username, PhoneNumber? phoneNumber)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? refreshEdit,
  }) {
    return updateProfileImage?.call(fileName, file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(UserName? username, PhoneNumber? phoneNumber)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? refreshEdit,
    required TResult orElse(),
  }) {
    if (updateProfileImage != null) {
      return updateProfileImage(fileName, file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCurrentUser value) getCurrentUser,
    required TResult Function(CreateOrUpdateUser value) createOrUpdateUser,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(DeleteProfileImage value) deleteProfileImage,
    required TResult Function(UpdateProfileImage value) updateProfileImage,
    required TResult Function(SetEditUsername value) setEditUsername,
    required TResult Function(SetEditPhonenumber value) setEditPhonenumber,
    required TResult Function(RefreshEdit value) refreshEdit,
  }) {
    return updateProfileImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCurrentUser value)? getCurrentUser,
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(RefreshEdit value)? refreshEdit,
  }) {
    return updateProfileImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCurrentUser value)? getCurrentUser,
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(RefreshEdit value)? refreshEdit,
    required TResult orElse(),
  }) {
    if (updateProfileImage != null) {
      return updateProfileImage(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileImage implements UserEvent {
  const factory UpdateProfileImage(
      {required String fileName, required File file}) = _$UpdateProfileImage;

  String get fileName;
  File get file;
  @JsonKey(ignore: true)
  $UpdateProfileImageCopyWith<UpdateProfileImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetEditUsernameCopyWith<$Res> {
  factory $SetEditUsernameCopyWith(
          SetEditUsername value, $Res Function(SetEditUsername) then) =
      _$SetEditUsernameCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$SetEditUsernameCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $SetEditUsernameCopyWith<$Res> {
  _$SetEditUsernameCopyWithImpl(
      SetEditUsername _value, $Res Function(SetEditUsername) _then)
      : super(_value, (v) => _then(v as SetEditUsername));

  @override
  SetEditUsername get _value => super._value as SetEditUsername;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(SetEditUsername(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetEditUsername implements SetEditUsername {
  const _$SetEditUsername(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'UserEvent.setEditUsername(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetEditUsername &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $SetEditUsernameCopyWith<SetEditUsername> get copyWith =>
      _$SetEditUsernameCopyWithImpl<SetEditUsername>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(UserName? username, PhoneNumber? phoneNumber)
        createOrUpdateUser,
    required TResult Function() deleteUser,
    required TResult Function(String imageStorageLocation) deleteProfileImage,
    required TResult Function(String fileName, File file) updateProfileImage,
    required TResult Function(String value) setEditUsername,
    required TResult Function(String value) setEditPhonenumber,
    required TResult Function() refreshEdit,
  }) {
    return setEditUsername(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(UserName? username, PhoneNumber? phoneNumber)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? refreshEdit,
  }) {
    return setEditUsername?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(UserName? username, PhoneNumber? phoneNumber)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? refreshEdit,
    required TResult orElse(),
  }) {
    if (setEditUsername != null) {
      return setEditUsername(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCurrentUser value) getCurrentUser,
    required TResult Function(CreateOrUpdateUser value) createOrUpdateUser,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(DeleteProfileImage value) deleteProfileImage,
    required TResult Function(UpdateProfileImage value) updateProfileImage,
    required TResult Function(SetEditUsername value) setEditUsername,
    required TResult Function(SetEditPhonenumber value) setEditPhonenumber,
    required TResult Function(RefreshEdit value) refreshEdit,
  }) {
    return setEditUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCurrentUser value)? getCurrentUser,
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(RefreshEdit value)? refreshEdit,
  }) {
    return setEditUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCurrentUser value)? getCurrentUser,
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(RefreshEdit value)? refreshEdit,
    required TResult orElse(),
  }) {
    if (setEditUsername != null) {
      return setEditUsername(this);
    }
    return orElse();
  }
}

abstract class SetEditUsername implements UserEvent {
  const factory SetEditUsername(String value) = _$SetEditUsername;

  String get value;
  @JsonKey(ignore: true)
  $SetEditUsernameCopyWith<SetEditUsername> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetEditPhonenumberCopyWith<$Res> {
  factory $SetEditPhonenumberCopyWith(
          SetEditPhonenumber value, $Res Function(SetEditPhonenumber) then) =
      _$SetEditPhonenumberCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$SetEditPhonenumberCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $SetEditPhonenumberCopyWith<$Res> {
  _$SetEditPhonenumberCopyWithImpl(
      SetEditPhonenumber _value, $Res Function(SetEditPhonenumber) _then)
      : super(_value, (v) => _then(v as SetEditPhonenumber));

  @override
  SetEditPhonenumber get _value => super._value as SetEditPhonenumber;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(SetEditPhonenumber(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetEditPhonenumber implements SetEditPhonenumber {
  const _$SetEditPhonenumber(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'UserEvent.setEditPhonenumber(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetEditPhonenumber &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $SetEditPhonenumberCopyWith<SetEditPhonenumber> get copyWith =>
      _$SetEditPhonenumberCopyWithImpl<SetEditPhonenumber>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(UserName? username, PhoneNumber? phoneNumber)
        createOrUpdateUser,
    required TResult Function() deleteUser,
    required TResult Function(String imageStorageLocation) deleteProfileImage,
    required TResult Function(String fileName, File file) updateProfileImage,
    required TResult Function(String value) setEditUsername,
    required TResult Function(String value) setEditPhonenumber,
    required TResult Function() refreshEdit,
  }) {
    return setEditPhonenumber(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(UserName? username, PhoneNumber? phoneNumber)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? refreshEdit,
  }) {
    return setEditPhonenumber?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(UserName? username, PhoneNumber? phoneNumber)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? refreshEdit,
    required TResult orElse(),
  }) {
    if (setEditPhonenumber != null) {
      return setEditPhonenumber(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCurrentUser value) getCurrentUser,
    required TResult Function(CreateOrUpdateUser value) createOrUpdateUser,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(DeleteProfileImage value) deleteProfileImage,
    required TResult Function(UpdateProfileImage value) updateProfileImage,
    required TResult Function(SetEditUsername value) setEditUsername,
    required TResult Function(SetEditPhonenumber value) setEditPhonenumber,
    required TResult Function(RefreshEdit value) refreshEdit,
  }) {
    return setEditPhonenumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCurrentUser value)? getCurrentUser,
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(RefreshEdit value)? refreshEdit,
  }) {
    return setEditPhonenumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCurrentUser value)? getCurrentUser,
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(RefreshEdit value)? refreshEdit,
    required TResult orElse(),
  }) {
    if (setEditPhonenumber != null) {
      return setEditPhonenumber(this);
    }
    return orElse();
  }
}

abstract class SetEditPhonenumber implements UserEvent {
  const factory SetEditPhonenumber(String value) = _$SetEditPhonenumber;

  String get value;
  @JsonKey(ignore: true)
  $SetEditPhonenumberCopyWith<SetEditPhonenumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshEditCopyWith<$Res> {
  factory $RefreshEditCopyWith(
          RefreshEdit value, $Res Function(RefreshEdit) then) =
      _$RefreshEditCopyWithImpl<$Res>;
}

/// @nodoc
class _$RefreshEditCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $RefreshEditCopyWith<$Res> {
  _$RefreshEditCopyWithImpl(
      RefreshEdit _value, $Res Function(RefreshEdit) _then)
      : super(_value, (v) => _then(v as RefreshEdit));

  @override
  RefreshEdit get _value => super._value as RefreshEdit;
}

/// @nodoc

class _$RefreshEdit implements RefreshEdit {
  const _$RefreshEdit();

  @override
  String toString() {
    return 'UserEvent.refreshEdit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RefreshEdit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(UserName? username, PhoneNumber? phoneNumber)
        createOrUpdateUser,
    required TResult Function() deleteUser,
    required TResult Function(String imageStorageLocation) deleteProfileImage,
    required TResult Function(String fileName, File file) updateProfileImage,
    required TResult Function(String value) setEditUsername,
    required TResult Function(String value) setEditPhonenumber,
    required TResult Function() refreshEdit,
  }) {
    return refreshEdit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(UserName? username, PhoneNumber? phoneNumber)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? refreshEdit,
  }) {
    return refreshEdit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(UserName? username, PhoneNumber? phoneNumber)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? refreshEdit,
    required TResult orElse(),
  }) {
    if (refreshEdit != null) {
      return refreshEdit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCurrentUser value) getCurrentUser,
    required TResult Function(CreateOrUpdateUser value) createOrUpdateUser,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(DeleteProfileImage value) deleteProfileImage,
    required TResult Function(UpdateProfileImage value) updateProfileImage,
    required TResult Function(SetEditUsername value) setEditUsername,
    required TResult Function(SetEditPhonenumber value) setEditPhonenumber,
    required TResult Function(RefreshEdit value) refreshEdit,
  }) {
    return refreshEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCurrentUser value)? getCurrentUser,
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(RefreshEdit value)? refreshEdit,
  }) {
    return refreshEdit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCurrentUser value)? getCurrentUser,
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(RefreshEdit value)? refreshEdit,
    required TResult orElse(),
  }) {
    if (refreshEdit != null) {
      return refreshEdit(this);
    }
    return orElse();
  }
}

abstract class RefreshEdit implements UserEvent {
  const factory RefreshEdit() = _$RefreshEdit;
}

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

  _UserState call(
      {required MyUser? user,
      required bool isLoading,
      required bool isImageLoading,
      required bool showEditErrorMessage,
      required Option<Either<UserFailure, Unit>> userFailureOrSuccess,
      required UserName editUsername,
      required PhoneNumber editPhonenumber}) {
    return _UserState(
      user: user,
      isLoading: isLoading,
      isImageLoading: isImageLoading,
      showEditErrorMessage: showEditErrorMessage,
      userFailureOrSuccess: userFailureOrSuccess,
      editUsername: editUsername,
      editPhonenumber: editPhonenumber,
    );
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  MyUser? get user => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isImageLoading => throw _privateConstructorUsedError;
  bool get showEditErrorMessage => throw _privateConstructorUsedError;
  Option<Either<UserFailure, Unit>> get userFailureOrSuccess =>
      throw _privateConstructorUsedError;
  UserName get editUsername => throw _privateConstructorUsedError;
  PhoneNumber get editPhonenumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
  $Res call(
      {MyUser? user,
      bool isLoading,
      bool isImageLoading,
      bool showEditErrorMessage,
      Option<Either<UserFailure, Unit>> userFailureOrSuccess,
      UserName editUsername,
      PhoneNumber editPhonenumber});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? isLoading = freezed,
    Object? isImageLoading = freezed,
    Object? showEditErrorMessage = freezed,
    Object? userFailureOrSuccess = freezed,
    Object? editUsername = freezed,
    Object? editPhonenumber = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as MyUser?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isImageLoading: isImageLoading == freezed
          ? _value.isImageLoading
          : isImageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showEditErrorMessage: showEditErrorMessage == freezed
          ? _value.showEditErrorMessage
          : showEditErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      userFailureOrSuccess: userFailureOrSuccess == freezed
          ? _value.userFailureOrSuccess
          : userFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<UserFailure, Unit>>,
      editUsername: editUsername == freezed
          ? _value.editUsername
          : editUsername // ignore: cast_nullable_to_non_nullable
              as UserName,
      editPhonenumber: editPhonenumber == freezed
          ? _value.editPhonenumber
          : editPhonenumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
    ));
  }
}

/// @nodoc
abstract class _$UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$UserStateCopyWith(
          _UserState value, $Res Function(_UserState) then) =
      __$UserStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {MyUser? user,
      bool isLoading,
      bool isImageLoading,
      bool showEditErrorMessage,
      Option<Either<UserFailure, Unit>> userFailureOrSuccess,
      UserName editUsername,
      PhoneNumber editPhonenumber});
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
    Object? user = freezed,
    Object? isLoading = freezed,
    Object? isImageLoading = freezed,
    Object? showEditErrorMessage = freezed,
    Object? userFailureOrSuccess = freezed,
    Object? editUsername = freezed,
    Object? editPhonenumber = freezed,
  }) {
    return _then(_UserState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as MyUser?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isImageLoading: isImageLoading == freezed
          ? _value.isImageLoading
          : isImageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showEditErrorMessage: showEditErrorMessage == freezed
          ? _value.showEditErrorMessage
          : showEditErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      userFailureOrSuccess: userFailureOrSuccess == freezed
          ? _value.userFailureOrSuccess
          : userFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<UserFailure, Unit>>,
      editUsername: editUsername == freezed
          ? _value.editUsername
          : editUsername // ignore: cast_nullable_to_non_nullable
              as UserName,
      editPhonenumber: editPhonenumber == freezed
          ? _value.editPhonenumber
          : editPhonenumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
    ));
  }
}

/// @nodoc

class _$_UserState implements _UserState {
  const _$_UserState(
      {required this.user,
      required this.isLoading,
      required this.isImageLoading,
      required this.showEditErrorMessage,
      required this.userFailureOrSuccess,
      required this.editUsername,
      required this.editPhonenumber});

  @override
  final MyUser? user;
  @override
  final bool isLoading;
  @override
  final bool isImageLoading;
  @override
  final bool showEditErrorMessage;
  @override
  final Option<Either<UserFailure, Unit>> userFailureOrSuccess;
  @override
  final UserName editUsername;
  @override
  final PhoneNumber editPhonenumber;

  @override
  String toString() {
    return 'UserState(user: $user, isLoading: $isLoading, isImageLoading: $isImageLoading, showEditErrorMessage: $showEditErrorMessage, userFailureOrSuccess: $userFailureOrSuccess, editUsername: $editUsername, editPhonenumber: $editPhonenumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserState &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isImageLoading, isImageLoading) &&
            const DeepCollectionEquality()
                .equals(other.showEditErrorMessage, showEditErrorMessage) &&
            const DeepCollectionEquality()
                .equals(other.userFailureOrSuccess, userFailureOrSuccess) &&
            const DeepCollectionEquality()
                .equals(other.editUsername, editUsername) &&
            const DeepCollectionEquality()
                .equals(other.editPhonenumber, editPhonenumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isImageLoading),
      const DeepCollectionEquality().hash(showEditErrorMessage),
      const DeepCollectionEquality().hash(userFailureOrSuccess),
      const DeepCollectionEquality().hash(editUsername),
      const DeepCollectionEquality().hash(editPhonenumber));

  @JsonKey(ignore: true)
  @override
  _$UserStateCopyWith<_UserState> get copyWith =>
      __$UserStateCopyWithImpl<_UserState>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
      {required MyUser? user,
      required bool isLoading,
      required bool isImageLoading,
      required bool showEditErrorMessage,
      required Option<Either<UserFailure, Unit>> userFailureOrSuccess,
      required UserName editUsername,
      required PhoneNumber editPhonenumber}) = _$_UserState;

  @override
  MyUser? get user;
  @override
  bool get isLoading;
  @override
  bool get isImageLoading;
  @override
  bool get showEditErrorMessage;
  @override
  Option<Either<UserFailure, Unit>> get userFailureOrSuccess;
  @override
  UserName get editUsername;
  @override
  PhoneNumber get editPhonenumber;
  @override
  @JsonKey(ignore: true)
  _$UserStateCopyWith<_UserState> get copyWith =>
      throw _privateConstructorUsedError;
}
