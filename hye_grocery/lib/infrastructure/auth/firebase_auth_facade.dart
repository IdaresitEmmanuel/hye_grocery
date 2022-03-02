import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hye_grocery/domain/auth/auth_failure.dart';
import 'package:hye_grocery/domain/auth/i_auth_facade.dart';
import 'package:hye_grocery/domain/auth/user.dart';
import 'package:hye_grocery/domain/auth/value_field_objects.dart';
import 'package:hye_grocery/domain/core/value_objects.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseFirestore _firestore;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn, this._firestore);

  @override
  Future<Option<MyUser>> getSignedInUser() async {
    final _firebaseUser = _firebaseAuth.currentUser;
    if (_firebaseUser != null) {
      return some(MyUser(
          id: UniqueId.fromUniqueString(_firebaseUser.uid),
          userName: UserName(_firebaseUser.displayName ?? "Unknown"),
          emailAddress: EmailAddress(_firebaseUser.uid)));
    }
    return none();
  }

  @override
  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
      debugPrint("firebaseAuth signout successful!");
    } catch (e) {
      debugPrint("firebaseAuth signout error : $e");
    }
    try {
      await _googleSignIn.signOut();
      debugPrint("google signout successful!");
    } catch (e) {
      debugPrint(" google sign out error : $e");
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInUser(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailAddressStr, password: passwordStr);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found" || e.code == "wrong-password") {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancellByUser());
      }
      final googleAuthentication = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.credential(
          idToken: googleAuthentication.idToken,
          accessToken: googleAuthentication.accessToken);

      final userCredential =
          await _firebaseAuth.signInWithCredential(authCredential);
      final firebaseUser = userCredential.user;

      if (userCredential.additionalUserInfo!.isNewUser &&
          firebaseUser != null) {
        final myUser = MyUser(
            id: UniqueId.fromUniqueString(userCredential.user!.uid),
            userName: UserName(userCredential.user!.displayName ?? "unknown"),
            emailAddress:
                EmailAddress(userCredential.user!.email ?? "unknown"));
        _firestore
            .collection("users")
            .doc(userCredential.user!.uid)
            .set(myUser.toMap());
        return right(unit);
      }

      return left(const AuthFailure.serverError());
    } on PlatformException catch (_) {
      // error
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signUpUser(
      {required UserName userName,
      required EmailAddress emailAddress,
      required PhoneNumber phoneNumber,
      required Password password}) async {
    final userNameStr = userName.getOrCrash();
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    final phoneNumberStr = phoneNumber.getOrCrash();
    try {
      print("about to create fb user");
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddressStr, password: passwordStr);
      final firebaseUser = userCredential.user;

      if (userCredential.additionalUserInfo!.isNewUser &&
          firebaseUser != null) {
        print("about to create user db");
        final myUser = MyUser(
            id: UniqueId.fromUniqueString(userCredential.user!.uid),
            userName: UserName(userNameStr),
            emailAddress: EmailAddress(userCredential.user!.email ?? "unknown"),
            phoneNo: PhoneNumber(phoneNumberStr));
        print("about to create user db in firestore");
        try {
          _firestore
              .collection("users")
              .doc(userCredential.user!.uid)
              .set(myUser.toMap());
        } catch (e) {
          debugPrint(e.toString());
        }
        return right(unit);
      }
      return left(const AuthFailure.serverError());
    } on PlatformException catch (e) {
      if (e.code == "email-already-in-use") {
        return left(const AuthFailure.emailAlreadyInUser());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }
}
