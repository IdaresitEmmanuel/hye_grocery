import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hye_grocery/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:hye_grocery/domain/auth/i_auth_facade.dart';
import 'package:hye_grocery/domain/auth/value_field_objects.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../sign_in_form/sign_in_form_bloc_test.mocks.dart';

@GenerateMocks([IAuthFacade])
void main() {
  MockIAuthFacade mockIAuthFacade = MockIAuthFacade();
  const userNameString = 'Emmanuel';
  const emailString = 'emmanuel@gmail.com';
  const passwordString = '123456';
  const phoneNumberString = '09045937912';
  final userName = UserName(userNameString);
  final emailAddress = EmailAddress(emailString);
  final password = Password(passwordString);
  final confirmPassword =
      Password2(password.value.getOrElse(() => ""), passwordString);
  final phoneNumber = PhoneNumber(phoneNumberString);

  test("first state should be the initial state", () async {
    SignUpFormBloc signUpFormBloc = SignUpFormBloc(mockIAuthFacade);
    expect(signUpFormBloc.state, SignUpFormState.initial());
  });

  blocTest(
    'refreshState event',
    build: () => SignUpFormBloc(mockIAuthFacade),
    act: (SignUpFormBloc signUpFormBloc) {
      signUpFormBloc.add(const SignUpFormEvent.refreshState());
    },
    expect: () => [SignUpFormState.initial()],
  );

  blocTest(
    'userName changed event',
    build: () => SignUpFormBloc(mockIAuthFacade),
    act: (SignUpFormBloc signUpFormBloc) {
      signUpFormBloc.add(const SignUpFormEvent.userNameChanged(userNameString));
    },
    expect: () => [
      SignUpFormState.initial()
          .copyWith(userName: userName, authFailureOrSuccess: none())
    ],
  );

  blocTest(
    'emailAddress changed event',
    build: () => SignUpFormBloc(mockIAuthFacade),
    act: (SignUpFormBloc signUpFormBloc) {
      signUpFormBloc.add(const SignUpFormEvent.emailChanged(emailString));
    },
    expect: () => [
      SignUpFormState.initial()
          .copyWith(emailAddress: emailAddress, authFailureOrSuccess: none())
    ],
  );

  blocTest(
    'password changed event',
    build: () => SignUpFormBloc(mockIAuthFacade),
    act: (SignUpFormBloc signUpFormBloc) {
      signUpFormBloc.add(const SignUpFormEvent.passwordChanged(passwordString));
    },
    expect: () => [
      SignUpFormState.initial()
          .copyWith(password: password, authFailureOrSuccess: none())
    ],
  );

  blocTest(
    'confirmPassword changed event',
    build: () => SignUpFormBloc(mockIAuthFacade),
    act: (SignUpFormBloc signUpFormBloc) {
      signUpFormBloc.add(const SignUpFormEvent.passwordChanged(passwordString));
      signUpFormBloc
          .add(const SignUpFormEvent.confirmPasswordChanged(passwordString));
    },
    expect: () => [
      SignUpFormState.initial()
          .copyWith(password: password, authFailureOrSuccess: none()),
      SignUpFormState.initial().copyWith(
          password: password,
          confirmPassword: confirmPassword,
          authFailureOrSuccess: none())
    ],
  );

  blocTest(
    'phone number changed event',
    build: () => SignUpFormBloc(mockIAuthFacade),
    act: (SignUpFormBloc signUpFormBloc) {
      signUpFormBloc
          .add(const SignUpFormEvent.phoneNumberChanged(phoneNumberString));
    },
    expect: () => [
      SignUpFormState.initial()
          .copyWith(phoneNumber: phoneNumber, authFailureOrSuccess: none())
    ],
  );

  blocTest('register user event',
      build: () {
        when(mockIAuthFacade.signUpUser(
                emailAddress: emailAddress, password: password))
            .thenAnswer((_) async => const Right(unit));

        return SignUpFormBloc(mockIAuthFacade);
      },
      act: (SignUpFormBloc signUpFormBloc) {
        signUpFormBloc.add(const SignUpFormEvent.emailChanged(emailString));
        signUpFormBloc
            .add(const SignUpFormEvent.passwordChanged(passwordString));
        signUpFormBloc.add(const SignUpFormEvent.registerUserPressed());
      },
      expect: () => [
            SignUpFormState.initial().copyWith(
                emailAddress: emailAddress, authFailureOrSuccess: none()),
            SignUpFormState.initial().copyWith(
                emailAddress: emailAddress,
                password: password,
                authFailureOrSuccess: none()),
            SignUpFormState.initial().copyWith(
                emailAddress: emailAddress,
                password: password,
                showErrorMessages: true,
                authFailureOrSuccess: none()),
            SignUpFormState.initial().copyWith(
                emailAddress: emailAddress,
                password: password,
                showErrorMessages: true,
                authFailureOrSuccess: const Some(Right(unit))),
          ],
      verify: (SignUpFormBloc signUpFormBloc) {
        verify(mockIAuthFacade.signUpUser(
                emailAddress: emailAddress, password: password))
            .called(1);
      });
}
