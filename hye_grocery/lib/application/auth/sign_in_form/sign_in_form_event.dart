part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged(String value) = EmailChanged;
  const factory SignInFormEvent.passwordChanged(String value) = PasswordChanged;
  const factory SignInFormEvent.signInWithEmailAndPasswordPressed() =
      SignInWithEmailAndPasswordPressed;
  const factory SignInFormEvent.signInWithGooglePressed() =
      SignInWithGooglePressed;
  const factory SignInFormEvent.signInWithFacebookPressed() =
      SignInWithFaceBookPressed;
  const factory SignInFormEvent.forgotPasswordPressed() = ForgotPasswordPressed;
  const factory SignInFormEvent.goToSignUpPagePressed() = GoToSignUpPagePressed;
}
