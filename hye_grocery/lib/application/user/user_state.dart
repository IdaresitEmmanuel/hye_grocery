part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState({
    MyUser? signedInUser,
  }) = _UserState;

  factory UserState.initial() => const UserState();
}
