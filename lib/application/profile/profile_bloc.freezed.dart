// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileEventTearOff {
  const _$ProfileEventTearOff();

  UpdateUserProfile updateUserProfile() {
    return const UpdateUserProfile();
  }

  UpdateProfileImage updateProfileImage(
      {required String fileName, required File file}) {
    return UpdateProfileImage(
      fileName: fileName,
      file: file,
    );
  }

  DeleteProfileImage deleteProfileImage(
      {required String imageStorageLocation}) {
    return DeleteProfileImage(
      imageStorageLocation: imageStorageLocation,
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

  ResetState resetState() {
    return const ResetState();
  }
}

/// @nodoc
const $ProfileEvent = _$ProfileEventTearOff();

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() updateUserProfile,
    required TResult Function(String fileName, File file) updateProfileImage,
    required TResult Function(String imageStorageLocation) deleteProfileImage,
    required TResult Function(String value) setEditUsername,
    required TResult Function(String value) setEditPhonenumber,
    required TResult Function() resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? updateUserProfile,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? updateUserProfile,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? resetState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateUserProfile value) updateUserProfile,
    required TResult Function(UpdateProfileImage value) updateProfileImage,
    required TResult Function(DeleteProfileImage value) deleteProfileImage,
    required TResult Function(SetEditUsername value) setEditUsername,
    required TResult Function(SetEditPhonenumber value) setEditPhonenumber,
    required TResult Function(ResetState value) resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(ResetState value)? resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(ResetState value)? resetState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class $UpdateUserProfileCopyWith<$Res> {
  factory $UpdateUserProfileCopyWith(
          UpdateUserProfile value, $Res Function(UpdateUserProfile) then) =
      _$UpdateUserProfileCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateUserProfileCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements $UpdateUserProfileCopyWith<$Res> {
  _$UpdateUserProfileCopyWithImpl(
      UpdateUserProfile _value, $Res Function(UpdateUserProfile) _then)
      : super(_value, (v) => _then(v as UpdateUserProfile));

  @override
  UpdateUserProfile get _value => super._value as UpdateUserProfile;
}

/// @nodoc

class _$UpdateUserProfile implements UpdateUserProfile {
  const _$UpdateUserProfile();

  @override
  String toString() {
    return 'ProfileEvent.updateUserProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateUserProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() updateUserProfile,
    required TResult Function(String fileName, File file) updateProfileImage,
    required TResult Function(String imageStorageLocation) deleteProfileImage,
    required TResult Function(String value) setEditUsername,
    required TResult Function(String value) setEditPhonenumber,
    required TResult Function() resetState,
  }) {
    return updateUserProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? updateUserProfile,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? resetState,
  }) {
    return updateUserProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? updateUserProfile,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (updateUserProfile != null) {
      return updateUserProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateUserProfile value) updateUserProfile,
    required TResult Function(UpdateProfileImage value) updateProfileImage,
    required TResult Function(DeleteProfileImage value) deleteProfileImage,
    required TResult Function(SetEditUsername value) setEditUsername,
    required TResult Function(SetEditPhonenumber value) setEditPhonenumber,
    required TResult Function(ResetState value) resetState,
  }) {
    return updateUserProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(ResetState value)? resetState,
  }) {
    return updateUserProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (updateUserProfile != null) {
      return updateUserProfile(this);
    }
    return orElse();
  }
}

abstract class UpdateUserProfile implements ProfileEvent {
  const factory UpdateUserProfile() = _$UpdateUserProfile;
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
    extends _$ProfileEventCopyWithImpl<$Res>
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
    return 'ProfileEvent.updateProfileImage(fileName: $fileName, file: $file)';
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
    required TResult Function() updateUserProfile,
    required TResult Function(String fileName, File file) updateProfileImage,
    required TResult Function(String imageStorageLocation) deleteProfileImage,
    required TResult Function(String value) setEditUsername,
    required TResult Function(String value) setEditPhonenumber,
    required TResult Function() resetState,
  }) {
    return updateProfileImage(fileName, file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? updateUserProfile,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? resetState,
  }) {
    return updateProfileImage?.call(fileName, file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? updateUserProfile,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? resetState,
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
    required TResult Function(UpdateUserProfile value) updateUserProfile,
    required TResult Function(UpdateProfileImage value) updateProfileImage,
    required TResult Function(DeleteProfileImage value) deleteProfileImage,
    required TResult Function(SetEditUsername value) setEditUsername,
    required TResult Function(SetEditPhonenumber value) setEditPhonenumber,
    required TResult Function(ResetState value) resetState,
  }) {
    return updateProfileImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(ResetState value)? resetState,
  }) {
    return updateProfileImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (updateProfileImage != null) {
      return updateProfileImage(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileImage implements ProfileEvent {
  const factory UpdateProfileImage(
      {required String fileName, required File file}) = _$UpdateProfileImage;

  String get fileName;
  File get file;
  @JsonKey(ignore: true)
  $UpdateProfileImageCopyWith<UpdateProfileImage> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$ProfileEventCopyWithImpl<$Res>
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
    return 'ProfileEvent.deleteProfileImage(imageStorageLocation: $imageStorageLocation)';
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
    required TResult Function() updateUserProfile,
    required TResult Function(String fileName, File file) updateProfileImage,
    required TResult Function(String imageStorageLocation) deleteProfileImage,
    required TResult Function(String value) setEditUsername,
    required TResult Function(String value) setEditPhonenumber,
    required TResult Function() resetState,
  }) {
    return deleteProfileImage(imageStorageLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? updateUserProfile,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? resetState,
  }) {
    return deleteProfileImage?.call(imageStorageLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? updateUserProfile,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? resetState,
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
    required TResult Function(UpdateUserProfile value) updateUserProfile,
    required TResult Function(UpdateProfileImage value) updateProfileImage,
    required TResult Function(DeleteProfileImage value) deleteProfileImage,
    required TResult Function(SetEditUsername value) setEditUsername,
    required TResult Function(SetEditPhonenumber value) setEditPhonenumber,
    required TResult Function(ResetState value) resetState,
  }) {
    return deleteProfileImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(ResetState value)? resetState,
  }) {
    return deleteProfileImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (deleteProfileImage != null) {
      return deleteProfileImage(this);
    }
    return orElse();
  }
}

abstract class DeleteProfileImage implements ProfileEvent {
  const factory DeleteProfileImage({required String imageStorageLocation}) =
      _$DeleteProfileImage;

  String get imageStorageLocation;
  @JsonKey(ignore: true)
  $DeleteProfileImageCopyWith<DeleteProfileImage> get copyWith =>
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
class _$SetEditUsernameCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
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
    return 'ProfileEvent.setEditUsername(value: $value)';
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
    required TResult Function() updateUserProfile,
    required TResult Function(String fileName, File file) updateProfileImage,
    required TResult Function(String imageStorageLocation) deleteProfileImage,
    required TResult Function(String value) setEditUsername,
    required TResult Function(String value) setEditPhonenumber,
    required TResult Function() resetState,
  }) {
    return setEditUsername(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? updateUserProfile,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? resetState,
  }) {
    return setEditUsername?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? updateUserProfile,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? resetState,
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
    required TResult Function(UpdateUserProfile value) updateUserProfile,
    required TResult Function(UpdateProfileImage value) updateProfileImage,
    required TResult Function(DeleteProfileImage value) deleteProfileImage,
    required TResult Function(SetEditUsername value) setEditUsername,
    required TResult Function(SetEditPhonenumber value) setEditPhonenumber,
    required TResult Function(ResetState value) resetState,
  }) {
    return setEditUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(ResetState value)? resetState,
  }) {
    return setEditUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (setEditUsername != null) {
      return setEditUsername(this);
    }
    return orElse();
  }
}

abstract class SetEditUsername implements ProfileEvent {
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
    extends _$ProfileEventCopyWithImpl<$Res>
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
    return 'ProfileEvent.setEditPhonenumber(value: $value)';
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
    required TResult Function() updateUserProfile,
    required TResult Function(String fileName, File file) updateProfileImage,
    required TResult Function(String imageStorageLocation) deleteProfileImage,
    required TResult Function(String value) setEditUsername,
    required TResult Function(String value) setEditPhonenumber,
    required TResult Function() resetState,
  }) {
    return setEditPhonenumber(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? updateUserProfile,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? resetState,
  }) {
    return setEditPhonenumber?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? updateUserProfile,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? resetState,
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
    required TResult Function(UpdateUserProfile value) updateUserProfile,
    required TResult Function(UpdateProfileImage value) updateProfileImage,
    required TResult Function(DeleteProfileImage value) deleteProfileImage,
    required TResult Function(SetEditUsername value) setEditUsername,
    required TResult Function(SetEditPhonenumber value) setEditPhonenumber,
    required TResult Function(ResetState value) resetState,
  }) {
    return setEditPhonenumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(ResetState value)? resetState,
  }) {
    return setEditPhonenumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (setEditPhonenumber != null) {
      return setEditPhonenumber(this);
    }
    return orElse();
  }
}

abstract class SetEditPhonenumber implements ProfileEvent {
  const factory SetEditPhonenumber(String value) = _$SetEditPhonenumber;

  String get value;
  @JsonKey(ignore: true)
  $SetEditPhonenumberCopyWith<SetEditPhonenumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetStateCopyWith<$Res> {
  factory $ResetStateCopyWith(
          ResetState value, $Res Function(ResetState) then) =
      _$ResetStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetStateCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements $ResetStateCopyWith<$Res> {
  _$ResetStateCopyWithImpl(ResetState _value, $Res Function(ResetState) _then)
      : super(_value, (v) => _then(v as ResetState));

  @override
  ResetState get _value => super._value as ResetState;
}

/// @nodoc

class _$ResetState implements ResetState {
  const _$ResetState();

  @override
  String toString() {
    return 'ProfileEvent.resetState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ResetState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() updateUserProfile,
    required TResult Function(String fileName, File file) updateProfileImage,
    required TResult Function(String imageStorageLocation) deleteProfileImage,
    required TResult Function(String value) setEditUsername,
    required TResult Function(String value) setEditPhonenumber,
    required TResult Function() resetState,
  }) {
    return resetState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? updateUserProfile,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? resetState,
  }) {
    return resetState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? updateUserProfile,
    TResult Function(String fileName, File file)? updateProfileImage,
    TResult Function(String imageStorageLocation)? deleteProfileImage,
    TResult Function(String value)? setEditUsername,
    TResult Function(String value)? setEditPhonenumber,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateUserProfile value) updateUserProfile,
    required TResult Function(UpdateProfileImage value) updateProfileImage,
    required TResult Function(DeleteProfileImage value) deleteProfileImage,
    required TResult Function(SetEditUsername value) setEditUsername,
    required TResult Function(SetEditPhonenumber value) setEditPhonenumber,
    required TResult Function(ResetState value) resetState,
  }) {
    return resetState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(ResetState value)? resetState,
  }) {
    return resetState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUserProfile value)? updateUserProfile,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    TResult Function(DeleteProfileImage value)? deleteProfileImage,
    TResult Function(SetEditUsername value)? setEditUsername,
    TResult Function(SetEditPhonenumber value)? setEditPhonenumber,
    TResult Function(ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState(this);
    }
    return orElse();
  }
}

abstract class ResetState implements ProfileEvent {
  const factory ResetState() = _$ResetState;
}

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

  _ProfileState call(
      {required bool isImageLoading,
      required bool isEditing,
      required bool showEditErrorMessage,
      required UserName editUsername,
      required PhoneNumber editPhonenumber,
      required Option<Either<ProfileFailure, Unit>> imageEditFailureOrSuccess,
      required Option<Either<ProfileFailure, Unit>> editFailureOrSuccess,
      required Option<Either<ProfileFailure, Unit>>
          imageDeleteFailureOrSuccess}) {
    return _ProfileState(
      isImageLoading: isImageLoading,
      isEditing: isEditing,
      showEditErrorMessage: showEditErrorMessage,
      editUsername: editUsername,
      editPhonenumber: editPhonenumber,
      imageEditFailureOrSuccess: imageEditFailureOrSuccess,
      editFailureOrSuccess: editFailureOrSuccess,
      imageDeleteFailureOrSuccess: imageDeleteFailureOrSuccess,
    );
  }
}

/// @nodoc
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  bool get isImageLoading => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get showEditErrorMessage => throw _privateConstructorUsedError;
  UserName get editUsername => throw _privateConstructorUsedError;
  PhoneNumber get editPhonenumber => throw _privateConstructorUsedError;
  Option<Either<ProfileFailure, Unit>> get imageEditFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<ProfileFailure, Unit>> get editFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<ProfileFailure, Unit>> get imageDeleteFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
  $Res call(
      {bool isImageLoading,
      bool isEditing,
      bool showEditErrorMessage,
      UserName editUsername,
      PhoneNumber editPhonenumber,
      Option<Either<ProfileFailure, Unit>> imageEditFailureOrSuccess,
      Option<Either<ProfileFailure, Unit>> editFailureOrSuccess,
      Option<Either<ProfileFailure, Unit>> imageDeleteFailureOrSuccess});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;

  @override
  $Res call({
    Object? isImageLoading = freezed,
    Object? isEditing = freezed,
    Object? showEditErrorMessage = freezed,
    Object? editUsername = freezed,
    Object? editPhonenumber = freezed,
    Object? imageEditFailureOrSuccess = freezed,
    Object? editFailureOrSuccess = freezed,
    Object? imageDeleteFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      isImageLoading: isImageLoading == freezed
          ? _value.isImageLoading
          : isImageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      showEditErrorMessage: showEditErrorMessage == freezed
          ? _value.showEditErrorMessage
          : showEditErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      editUsername: editUsername == freezed
          ? _value.editUsername
          : editUsername // ignore: cast_nullable_to_non_nullable
              as UserName,
      editPhonenumber: editPhonenumber == freezed
          ? _value.editPhonenumber
          : editPhonenumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      imageEditFailureOrSuccess: imageEditFailureOrSuccess == freezed
          ? _value.imageEditFailureOrSuccess
          : imageEditFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, Unit>>,
      editFailureOrSuccess: editFailureOrSuccess == freezed
          ? _value.editFailureOrSuccess
          : editFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, Unit>>,
      imageDeleteFailureOrSuccess: imageDeleteFailureOrSuccess == freezed
          ? _value.imageDeleteFailureOrSuccess
          : imageDeleteFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(
          _ProfileState value, $Res Function(_ProfileState) then) =
      __$ProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isImageLoading,
      bool isEditing,
      bool showEditErrorMessage,
      UserName editUsername,
      PhoneNumber editPhonenumber,
      Option<Either<ProfileFailure, Unit>> imageEditFailureOrSuccess,
      Option<Either<ProfileFailure, Unit>> editFailureOrSuccess,
      Option<Either<ProfileFailure, Unit>> imageDeleteFailureOrSuccess});
}

/// @nodoc
class __$ProfileStateCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(
      _ProfileState _value, $Res Function(_ProfileState) _then)
      : super(_value, (v) => _then(v as _ProfileState));

  @override
  _ProfileState get _value => super._value as _ProfileState;

  @override
  $Res call({
    Object? isImageLoading = freezed,
    Object? isEditing = freezed,
    Object? showEditErrorMessage = freezed,
    Object? editUsername = freezed,
    Object? editPhonenumber = freezed,
    Object? imageEditFailureOrSuccess = freezed,
    Object? editFailureOrSuccess = freezed,
    Object? imageDeleteFailureOrSuccess = freezed,
  }) {
    return _then(_ProfileState(
      isImageLoading: isImageLoading == freezed
          ? _value.isImageLoading
          : isImageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      showEditErrorMessage: showEditErrorMessage == freezed
          ? _value.showEditErrorMessage
          : showEditErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      editUsername: editUsername == freezed
          ? _value.editUsername
          : editUsername // ignore: cast_nullable_to_non_nullable
              as UserName,
      editPhonenumber: editPhonenumber == freezed
          ? _value.editPhonenumber
          : editPhonenumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      imageEditFailureOrSuccess: imageEditFailureOrSuccess == freezed
          ? _value.imageEditFailureOrSuccess
          : imageEditFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, Unit>>,
      editFailureOrSuccess: editFailureOrSuccess == freezed
          ? _value.editFailureOrSuccess
          : editFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, Unit>>,
      imageDeleteFailureOrSuccess: imageDeleteFailureOrSuccess == freezed
          ? _value.imageDeleteFailureOrSuccess
          : imageDeleteFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ProfileState implements _ProfileState {
  const _$_ProfileState(
      {required this.isImageLoading,
      required this.isEditing,
      required this.showEditErrorMessage,
      required this.editUsername,
      required this.editPhonenumber,
      required this.imageEditFailureOrSuccess,
      required this.editFailureOrSuccess,
      required this.imageDeleteFailureOrSuccess});

  @override
  final bool isImageLoading;
  @override
  final bool isEditing;
  @override
  final bool showEditErrorMessage;
  @override
  final UserName editUsername;
  @override
  final PhoneNumber editPhonenumber;
  @override
  final Option<Either<ProfileFailure, Unit>> imageEditFailureOrSuccess;
  @override
  final Option<Either<ProfileFailure, Unit>> editFailureOrSuccess;
  @override
  final Option<Either<ProfileFailure, Unit>> imageDeleteFailureOrSuccess;

  @override
  String toString() {
    return 'ProfileState(isImageLoading: $isImageLoading, isEditing: $isEditing, showEditErrorMessage: $showEditErrorMessage, editUsername: $editUsername, editPhonenumber: $editPhonenumber, imageEditFailureOrSuccess: $imageEditFailureOrSuccess, editFailureOrSuccess: $editFailureOrSuccess, imageDeleteFailureOrSuccess: $imageDeleteFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileState &&
            const DeepCollectionEquality()
                .equals(other.isImageLoading, isImageLoading) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality()
                .equals(other.showEditErrorMessage, showEditErrorMessage) &&
            const DeepCollectionEquality()
                .equals(other.editUsername, editUsername) &&
            const DeepCollectionEquality()
                .equals(other.editPhonenumber, editPhonenumber) &&
            const DeepCollectionEquality().equals(
                other.imageEditFailureOrSuccess, imageEditFailureOrSuccess) &&
            const DeepCollectionEquality()
                .equals(other.editFailureOrSuccess, editFailureOrSuccess) &&
            const DeepCollectionEquality().equals(
                other.imageDeleteFailureOrSuccess,
                imageDeleteFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isImageLoading),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(showEditErrorMessage),
      const DeepCollectionEquality().hash(editUsername),
      const DeepCollectionEquality().hash(editPhonenumber),
      const DeepCollectionEquality().hash(imageEditFailureOrSuccess),
      const DeepCollectionEquality().hash(editFailureOrSuccess),
      const DeepCollectionEquality().hash(imageDeleteFailureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {required bool isImageLoading,
      required bool isEditing,
      required bool showEditErrorMessage,
      required UserName editUsername,
      required PhoneNumber editPhonenumber,
      required Option<Either<ProfileFailure, Unit>> imageEditFailureOrSuccess,
      required Option<Either<ProfileFailure, Unit>> editFailureOrSuccess,
      required Option<Either<ProfileFailure, Unit>>
          imageDeleteFailureOrSuccess}) = _$_ProfileState;

  @override
  bool get isImageLoading;
  @override
  bool get isEditing;
  @override
  bool get showEditErrorMessage;
  @override
  UserName get editUsername;
  @override
  PhoneNumber get editPhonenumber;
  @override
  Option<Either<ProfileFailure, Unit>> get imageEditFailureOrSuccess;
  @override
  Option<Either<ProfileFailure, Unit>> get editFailureOrSuccess;
  @override
  Option<Either<ProfileFailure, Unit>> get imageDeleteFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
