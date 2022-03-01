part of 'sign_up_form_bloc.dart';

@freezed
abstract class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState(
          {required String displayName,
          required EmailAddress emailAddress,
          required PhoneNumber phoneNumber,
          required Password password,
          required Password confirmPassword,
          required bool showErrorMessages,
          required bool isSubmitting,
          required bool passwordMismatch,
          required Option<Either<AuthFailure, Unit>> authFailureOrSuccess}) =
      _SignUpFormState;

  factory SignUpFormState.initial() => SignUpFormState(
        displayName: '',
        emailAddress: EmailAddress(''),
        phoneNumber: PhoneNumber(''),
        password: Password(''),
        confirmPassword: Password(''),
        showErrorMessages: false,
        isSubmitting: false,
        passwordMismatch: false,
        authFailureOrSuccess: none(),
      );
}
