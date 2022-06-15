part of 'user_bloc.dart';

@freezed
abstract class UserEvent with _$UserEvent {
  const factory UserEvent.getCurrentUser() = GetCurrentUser;
  const factory UserEvent.createOrUpdateUser(
      {UserName? username, PhoneNumber? phoneNumber}) = CreateOrUpdateUser;
  const factory UserEvent.deleteUser() = DeleteUser;
}
