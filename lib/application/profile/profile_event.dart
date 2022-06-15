part of 'profile_bloc.dart';

@freezed
abstract class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.updateUserProfile() = UpdateUserProfile;
  const factory ProfileEvent.updateProfileImage(
      {required String fileName, required File file}) = UpdateProfileImage;
  const factory ProfileEvent.deleteProfileImage(
      {required String imageStorageLocation}) = DeleteProfileImage;
  const factory ProfileEvent.setEditUsername(String value) = SetEditUsername;
  const factory ProfileEvent.setEditPhonenumber(String value) =
      SetEditPhonenumber;
  const factory ProfileEvent.resetState() = ResetState;
}
