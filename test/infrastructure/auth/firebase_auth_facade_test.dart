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

@GenerateMocks([
  // FirebaseAuth,
  GoogleSignIn,
  User,
  UserCredential,
  // GoogleSignInAccount,
  GoogleSignInAuthentication
], customMocks: [
  MockSpec<FirebaseAuth>(returnNullOnMissingStub: true),
])
void main() {
  MockFirebaseAuth mockFirebaseAuth = MockFirebaseAuth();

  MockGoogleSignIn mockGoogleSignIn = MockGoogleSignIn();
  FirebaseAuthFacade firebaseAuthFacade =
      FirebaseAuthFacade(mockFirebaseAuth, mockGoogleSignIn);
  MockUser mockUser = MockUser();
  MockUserCredential mockUserCredential = MockUserCredential();
  // MockGoogleSignInAccount mockGoogleSignInAccount = MockGoogleSignInAccount();
  // MockGoogleSignInAuthentication mockGoogleSignInAuthentication =
  //     MockGoogleSignInAuthentication();

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

  // Sign up User
  group("Sign up user", () {
    const emailString = "meandmyswag@yahoo.com";
    const passwordString = "password";
    final email = EmailAddress(emailString);
    final password = Password(passwordString);

    test("when user creation is successfull", () async {
      //arrange
      when(mockFirebaseAuth.createUserWithEmailAndPassword(
              email: emailString, password: passwordString))
          .thenAnswer((realInvocation) async => mockUserCredential);

      // act
      final result = await firebaseAuthFacade.signUpUser(
          emailAddress: email, password: password);

      // expect
      expect(result, const Right(unit));
    });

    test("when email is already in use", () async {
      //arrange
      when(mockFirebaseAuth.createUserWithEmailAndPassword(
              email: emailString, password: passwordString))
          .thenThrow(FirebaseAuthException(code: "email-already-in-use"));

      // act
      final result = await firebaseAuthFacade.signUpUser(
          emailAddress: email, password: password);

      // expect
      expect(result, const Left(AuthFailure.emailAlreadyInUser()));
    });

    // (every other error is classified as server error)
    test("when there is server error", () async {
      //arrange
      when(mockFirebaseAuth.createUserWithEmailAndPassword(
              email: emailString, password: passwordString))
          .thenThrow(FirebaseAuthException(code: ""));

      // act
      final result = await firebaseAuthFacade.signUpUser(
          emailAddress: email, password: password);

      // expect
      expect(result, const Left(AuthFailure.serverError()));
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

  group("Sign in with google", () {
    // const idToken = "idToken";
    // const accessToken = "accessToken";
    // final credentials = GoogleAuthProvider.credential(
    //     idToken: idToken, accessToken: accessToken);

    // test("when authentication is successfull", () async {
    // arrange
    //   when(mockGoogleSignIn.signIn())
    //       .thenAnswer((realInvocation) async => mockGoogleSignInAccount);
    //   when(mockGoogleSignInAccount.authentication)
    //       .thenAnswer((_) async => mockGoogleSignInAuthentication);
    //   when(mockGoogleSignInAuthentication.idToken).thenReturn(idToken);
    //   when(mockGoogleSignInAuthentication.accessToken).thenReturn(accessToken);
    //   when(mockFirebaseAuth.signInWithCredential(credentials))
    //       .thenAnswer((_) async => mockUserCredential);

    //   // ac
    //   final result = await firebaseAuthFacade.signInWithGoogle();

    //   // // expect
    //   expect(result, const Right(unit));
    // });

    test("when authentication is unsuccessfull", () async {
      // arrange
      when(mockGoogleSignIn.signIn())
          .thenAnswer((realInvocation) async => null);

      // act
      final result = await firebaseAuthFacade.signInWithGoogle();

      // expect
      expect(result, const Left(AuthFailure.cancellByUser()));
    });
  });
}
