import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hye_grocery/domain/auth/auth_failure.dart';
import 'package:hye_grocery/domain/auth/value_field_objects.dart';
import 'package:hye_grocery/domain/core/value_objects.dart';
import 'package:hye_grocery/domain/user/user.dart';
import 'package:hye_grocery/infrastructure/auth/firebase_auth_facade.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'firebase_auth_facade_test.mocks.dart';

@GenerateMocks([FirebaseAuth, GoogleSignIn, User, UserCredential])
void main() {
  MockFirebaseAuth mockFirebaseAuth = MockFirebaseAuth();
  MockGoogleSignIn mockGoogleSignIn = MockGoogleSignIn();
  FirebaseAuthFacade firebaseAuthFacade =
      FirebaseAuthFacade(mockFirebaseAuth, mockGoogleSignIn);
  MockUser mockUser = MockUser();
  MockUserCredential mockUserCredential = MockUserCredential();

  group('get signed in user', () {
    test("should return some(MyUser) when user is not null ", () async {
      // Arrange
      const userName = "Emmanuel";
      const email = "emmanuel@gmail.com";
      const uid = "thisIsMyUniqueIdentifier";
      final myUser = MyUser(
          id: UniqueId.fromUniqueString(uid),
          userName: UserName(userName),
          emailAddress: EmailAddress(email));
      when(mockFirebaseAuth.currentUser).thenReturn(mockUser);
      when(mockUser.uid).thenReturn(uid);
      when(mockUser.displayName).thenReturn(userName);
      when(mockUser.email).thenReturn(email);

      // Act
      final result = await firebaseAuthFacade.getSignedInUser();

      // Expect
      expect(result, Some(myUser));
    });

    test("should return none() when user is null ", () async {
      // arrange
      when(mockFirebaseAuth.currentUser).thenReturn(null);

      // act
      final result = await firebaseAuthFacade.getSignedInUser();

      // expect
      expect(result, const None());
    });
  });

  // Sign in user
  group("Sign In User", () {
    const emailString = "meandmyswag@yahoo.com";
    const passwordString = "password";
    final email = EmailAddress(emailString);
    final password = Password(passwordString);

    test("when authentication is successful", () async {
      // arrange
      when(mockFirebaseAuth.signInWithEmailAndPassword(
              email: emailString, password: passwordString))
          .thenAnswer((_) async => mockUserCredential);

      final result = await firebaseAuthFacade.signInUser(
          emailAddress: email, password: password);

      expect(result, const Right(unit));
    });

    test("when user is not found", () async {
      // arrange
      when(mockFirebaseAuth.signInWithEmailAndPassword(
              email: emailString, password: passwordString))
          .thenThrow(FirebaseAuthException(code: "user-not-found"));

      final result = await firebaseAuthFacade.signInUser(
          emailAddress: email, password: password);

      expect(
          result, const Left(AuthFailure.invalidEmailAndPasswordCombination()));
    });

    test("when password is incorrect", () async {
      // arrange
      when(mockFirebaseAuth.signInWithEmailAndPassword(
              email: emailString, password: passwordString))
          .thenThrow(FirebaseAuthException(code: "wrong-password"));

      final result = await firebaseAuthFacade.signInUser(
          emailAddress: email, password: password);

      expect(
          result, const Left(AuthFailure.invalidEmailAndPasswordCombination()));
    });

    test("failure (every other is regarded as server failure)", () async {
      // arrange
      when(mockFirebaseAuth.signInWithEmailAndPassword(
              email: emailString, password: passwordString))
          .thenThrow(FirebaseAuthException(code: ""));

      final result = await firebaseAuthFacade.signInUser(
          emailAddress: email, password: password);

      expect(result, const Left(AuthFailure.serverError()));
    });
  });
}
