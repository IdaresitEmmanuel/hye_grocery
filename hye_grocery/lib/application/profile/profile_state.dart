part of 'profile_bloc.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    required bool isImageLoading,
    required bool isEditing,
    required bool showEditErrorMessage,
    required UserName editUsername,
    required PhoneNumber editPhonenumber,
    required Option<Either<ProfileFailure, Unit>> imageEditFailureOrSuccess,
    required Option<Either<ProfileFailure, Unit>> editFailureOrSuccess,
    required Option<Either<ProfileFailure, Unit>> imageDeleteFailureOrSuccess,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        isImageLoading: false,
        isEditing: false,
        showEditErrorMessage: false,
        editUsername: UserName(''),
        editPhonenumber: PhoneNumber(''),
        imageEditFailureOrSuccess: none(),
        editFailureOrSuccess: none(),
        imageDeleteFailureOrSuccess: none(),
      );
}
