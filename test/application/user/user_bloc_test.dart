import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hye_grocery/application/user/user_bloc.dart';
import 'package:hye_grocery/domain/auth/value_field_objects.dart';
import 'package:hye_grocery/domain/core/value_objects.dart';
import 'package:hye_grocery/domain/user/i_user_facade.dart';
import 'package:hye_grocery/domain/user/user.dart';
import 'package:hye_grocery/domain/user/user_failure.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'user_bloc_test.mocks.dart';

@GenerateMocks([IUserFacade])
void main() {
  MockIUserFacade mockIUserFacade = MockIUserFacade();
  final myUser = MyUser(
      id: UniqueId.fromUniqueString('uid'),
      userName: UserName('userName'),
      emailAddress: EmailAddress('email@mail.com'));

  test('first state should be the initial state',
      () => expect(UserBloc(mockIUserFacade).state, UserState.initial()));

  group('get current user', () {
    blocTest(
      'when user is succesfully retrieved',
      build: () {
        when(mockIUserFacade.getUser()).thenAnswer((_) async => Right(myUser));
        return UserBloc(mockIUserFacade);
      },
      act: (UserBloc userBloc) {
        userBloc.add(const UserEvent.getCurrentUser());
      },
      expect: () => [
        UserState.initial().copyWith(isLoading: true),
        UserState.initial().copyWith(
            user: myUser,
            isLoading: false,
            userFailureOrSuccess: some(right(unit)))
      ],
    );

    blocTest(
      'when user is unsuccesfully retrieved',
      build: () {
        when(mockIUserFacade.getUser()).thenAnswer(
            (_) async => const Left(UserFailure.userDoesNotExist()));
        return UserBloc(mockIUserFacade);
      },
      act: (UserBloc userBloc) {
        userBloc.add(const UserEvent.getCurrentUser());
      },
      expect: () => [
        UserState.initial().copyWith(isLoading: true),
        UserState.initial().copyWith(
            user: null,
            isLoading: false,
            userFailureOrSuccess:
                some(left(const UserFailure.userDoesNotExist())))
      ],
    );
  });

  group('create or update user', () {
    blocTest(
      'when create or update is succesfull',
      build: () {
        when(mockIUserFacade.createOrUpdateUser())
            .thenAnswer((_) async => Right(myUser));
        return UserBloc(mockIUserFacade);
      },
      act: (UserBloc userBloc) {
        userBloc.add(const UserEvent.createOrUpdateUser());
      },
      expect: () => [
        UserState.initial()
            .copyWith(user: myUser, userFailureOrSuccess: some(right(unit)))
      ],
    );

    blocTest(
      'when create or update is unsuccessfull',
      build: () {
        when(mockIUserFacade.createOrUpdateUser())
            .thenAnswer((_) async => const Left(UserFailure.networkFailure()));
        return UserBloc(mockIUserFacade);
      },
      act: (UserBloc userBloc) {
        userBloc.add(const UserEvent.createOrUpdateUser());
      },
      expect: () => [
        UserState.initial().copyWith(
            user: null,
            userFailureOrSuccess:
                some(left(const UserFailure.networkFailure())))
      ],
    );
  });

  blocTest(
    'delete user',
    build: () {
      when(mockIUserFacade.deleteUser())
          .thenAnswer((_) async => const Right(unit));
      return UserBloc(mockIUserFacade);
    },
    act: (UserBloc userBloc) {
      userBloc.add(const UserEvent.deleteUser());
    },
    expect: () => [
      UserState.initial().copyWith(userFailureOrSuccess: none()),
    ],
  );
}
