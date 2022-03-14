part of 'user_bloc.dart';

@freezed
abstract class UserEvent with _$UserEvent {
  const factory UserEvent.getCurrentUser() = GetCurrentUser;
  const factory UserEvent.createOrUpdateUser(
      {UserName? username, PhoneNumber? phoneNumber}) = CreateOrUpdateUser;
  const factory UserEvent.deleteUser() = DeleteUser;
  const factory UserEvent.deleteProfileImage(
      {required String imageStorageLocation}) = DeleteProfileImage;
  const factory UserEvent.updateProfileImage(
      {required String fileName, required File file}) = UpdateProfileImage;
  const factory UserEvent.setEditUsername(String value) = SetEditUsername;
  const factory UserEvent.setEditPhonenumber(String value) = SetEditPhonenumber;
  const factory UserEvent.refreshEdit() = RefreshEdit;
}
