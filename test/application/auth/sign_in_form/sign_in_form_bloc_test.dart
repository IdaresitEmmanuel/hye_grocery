import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hye_grocery/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:hye_grocery/domain/auth/i_auth_facade.dart';
import 'package:hye_grocery/domain/auth/value_field_objects.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../auth_bloc/auth_bloc_test.mocks.dart';

@GenerateMocks([IAuthFacade])
void main() {
  MockIAuthFacade mockIAuthFacade = MockIAuthFacade();
  const emailString = 'me@mail.com';
  const passwordString = '123456';
  final emailAddress = EmailAddress(emailString);
  final password = Password(passwordString);

  test("first state should be the initial state", () async {
    SignInFormBloc signInFormBloc = SignInFormBloc(mockIAuthFacade);
    expect(signInFormBloc.state, SignInFormState.initial());
  });

  blocTest(
    "refresh state",
    build: () => SignInFormBloc(mockIAuthFacade),
    act: (SignInFormBloc signInFormBloc) {
      signInFormBloc.add(const SignInFormEvent.refreshState());
    },
    expect: () => [SignInFormState.initial()],
  );

  blocTest(
    "email changed",
    build: () => SignInFormBloc(mockIAuthFacade),
    act: (SignInFormBloc signInFormBloc) {
      signInFormBloc.add(const SignInFormEvent.emailChanged(emailString));
    },
    expect: () => [
      SignInFormState.initial().copyWith(
        emailAddress: emailAddress,
        authFailureOrSuccess: none(),
      ),
    ],
  );

  blocTest(
    "password changed",
    build: () => SignInFormBloc(mockIAuthFacade),
    act: (SignInFormBloc signInFormBloc) {
      signInFormBloc.add(const SignInFormEvent.passwordChanged(passwordString));
    },
    expect: () => [
      SignInFormState.initial().copyWith(
        password: password,
        authFailureOrSuccess: none(),
      ),
    ],
  );

  blocTest(
    "signInWithEmailAndPasswordPressed",
    build: () => SignInFormBloc(mockIAuthFacade),
    act: (SignInFormBloc signInFormBloc) {
      when(mockIAuthFacade.signInUser(
              emailAddress: emailAddress, password: password))
          .thenAnswer((realInvocation) async => const Right(unit));
      signInFormBloc.add(const SignInFormEvent.emailChanged(emailString));
      signInFormBloc.add(const SignInFormEvent.passwordChanged(passwordString));
      signInFormBloc
          .add(const SignInFormEvent.signInWithEmailAndPasswordPressed());
    },
    expect: () => [
      SignInFormState.initial()
          .copyWith(emailAddress: emailAddress, authFailureOrSuccess: none()),
      SignInFormState.initial().copyWith(
        emailAddress: emailAddress,
        password: password,
        authFailureOrSuccess: none(),
      ),
      SignInFormState.initial().copyWith(
        emailAddress: emailAddress,
        password: password,
        isSubmitting: true,
        showErrorMessages: true,
        authFailureOrSuccess: none(),
      ),
      SignInFormState.initial().copyWith(
        emailAddress: emailAddress,
        password: password,
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccess: some(const Right(unit)),
      ),
      SignInFormState.initial().copyWith(
        emailAddress: emailAddress,
        password: password,
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccess: none(),
      ),
    ],
    verify: (SignInFormBloc signInFormBloc) {
      verify(mockIAuthFacade.signInUser(
              emailAddress: emailAddress, password: password))
          .called(1);
    },
  );

  blocTest(
    'sign in with google',
    build: () => SignInFormBloc(mockIAuthFacade),
    act: (SignInFormBloc signInFormBloc) {
      when(mockIAuthFacade.signInWithGoogle())
          .thenAnswer((_) async => const Right(unit));

      signInFormBloc.add(const SignInFormEvent.signInWithGooglePressed());
    },
    expect: () => [
      SignInFormState.initial()
          .copyWith(authFailureOrSuccess: const Some(Right(unit)))
    ],
    verify: (SignInFormBloc signInFormBloc) {
      verify(mockIAuthFacade.signInWithGoogle()).called(1);
    },
  );

  // sign in with facebook has not yet been implemented
}
