part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState({
    required MyUser? user,
    required bool isLoading,
    required bool isImageLoading,
    required bool showEditErrorMessage,
    required Option<Either<UserFailure, Unit>> userFailureOrSuccess,
    required UserName editUsername,
    required PhoneNumber editPhonenumber,
  }) = _UserState;

  factory UserState.initial() => UserState(
      user: null,
      isLoading: false,
      isImageLoading: false,
      showEditErrorMessage: false,
      userFailureOrSuccess: none(),
      editUsername: UserName(''),
      editPhonenumber: PhoneNumber(''));
}
