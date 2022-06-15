part of 'sign_up_form_bloc.dart';

@freezed
abstract class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState(
          {required UserName userName,
          required EmailAddress emailAddress,
          required PhoneNumber phoneNumber,
          required Password password,
          required Password2 confirmPassword,
          required bool showErrorMessages,
          required bool isSubmitting,
          required Option<Either<AuthFailure, Unit>> authFailureOrSuccess}) =
      _SignUpFormState;

  factory SignUpFormState.initial() => SignUpFormState(
        userName: UserName(''),
        emailAddress: EmailAddress(''),
        phoneNumber: PhoneNumber(''),
        password: Password(''),
        confirmPassword: Password2('[]', ''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccess: none(),
      );
}
