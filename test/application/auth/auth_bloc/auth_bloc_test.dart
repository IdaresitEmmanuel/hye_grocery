import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hye_grocery/application/auth/auth_bloc/auth_bloc.dart';
import 'package:hye_grocery/domain/auth/i_auth_facade.dart';
import 'package:hye_grocery/domain/auth/value_field_objects.dart';
import 'package:hye_grocery/domain/core/value_objects.dart';
import 'package:hye_grocery/domain/user/user.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_bloc_test.mocks.dart';

@GenerateMocks([IAuthFacade])
void main() {
  MockIAuthFacade mockIAuthFacade = MockIAuthFacade();

  test('first state should be the initial state', () async {
    AuthBloc authBloc = AuthBloc(mockIAuthFacade);
    expect(authBloc.state, const AuthState.initial());
  });

  group('get auth status', () {
    final myUser = MyUser(
      id: UniqueId(),
      userName: UserName("me"),
      emailAddress: EmailAddress("me@gmail.com"),
    );
    blocTest(
      'when user is authenticated',
      build: () {
        when(mockIAuthFacade.getSignedInUser())
            .thenAnswer((_) async => Some(myUser));
        return AuthBloc(mockIAuthFacade);
      },
      act: (AuthBloc authBloc) {
        authBloc.add(const AuthEvent.requestAuthStatus());
      },
      expect: () => [const AuthState.authenticated()],
    );
    blocTest(
      'when user is unauthenticated',
      build: () {
        when(mockIAuthFacade.getSignedInUser())
            .thenAnswer((_) async => const None());
        return AuthBloc(mockIAuthFacade);
      },
      act: (AuthBloc authBloc) {
        authBloc.add(const AuthEvent.requestAuthStatus());
      },
      expect: () => [const AuthState.unauthenticated()],
    );
  });

  // sign out test
  blocTest(
    "sign out",
    build: () {
      return AuthBloc(mockIAuthFacade);
    },
    act: (AuthBloc authBloc) {
      authBloc.add(const AuthEvent.signOut());
    },
    expect: () => [
      const AuthState.loadingAuthenticationStatus(),
      const AuthState.unauthenticated()
    ],
  );
}
