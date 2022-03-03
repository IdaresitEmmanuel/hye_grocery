part of 'user_bloc.dart';

@freezed
abstract class UserEvent with _$UserEvent {
  const factory UserEvent.createOrUpdateUser(
      {required UserName username,
      required PhoneNumber phoneNumber}) = CreateOrUpdateUser;
  const factory UserEvent.deleteUser() = DeleteUser;
}
