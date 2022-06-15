import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hye_grocery/domain/user/user.dart';
import 'package:hye_grocery/domain/auth/value_field_objects.dart';
import 'package:hye_grocery/domain/core/value_objects.dart';
import 'package:hye_grocery/domain/user/i_user_facade.dart';
import 'package:hye_grocery/domain/user/user_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:hye_grocery/infrastructure/core/firebase_extensions.dart';

@LazySingleton(as: IUserFacade)
class UserFacade extends IUserFacade {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;
  UserFacade(this._firebaseAuth, this._firestore);

  @override
  Future<Either<UserFailure, MyUser>> getUser() async {
    final fbUser = _firebaseAuth.currentUser;

    if (fbUser != null) {
      DocumentSnapshot<Object?> doc =
          await _firestore.usersCollection.doc(fbUser.uid).get();
      if (doc.exists) {
        log("User document exist");
        return right(MyUser.fromMap(doc.data() as Map<String, dynamic>));
      }
      log("User document does not exist");
    }
    return left(const UserFailure.networkFailure());
  }

  @override
  Future<Either<UserFailure, MyUser>> createOrUpdateUser(
      {required UserName? userName, required PhoneNumber? phoneNumber}) async {
    final firebaseUser = _firebaseAuth.currentUser;

    if (firebaseUser != null) {
      final MyUser user = MyUser(
          id: UniqueId.fromUniqueString(firebaseUser.uid),
          userName: userName ?? UserName(firebaseUser.displayName!),
          emailAddress: EmailAddress(firebaseUser.email!),
          phoneNo: phoneNumber);
      try {
        await _firestore.usersCollection
            .doc(firebaseUser.uid)
            .set(user.toMap());
        return right(user);
      } catch (e) {
        return left(const UserFailure.networkFailure());
      }
    }
    return left(const UserFailure.userDoesNotExist());
  }

  @override
  Future<Either<UserFailure, Unit>> deleteUser() async {
    final firebaseUser = _firebaseAuth.currentUser;
    if (firebaseUser != null) {
      await _firestore.usersCollection.doc(firebaseUser.uid).delete();
      return right(unit);
    }
    return left(const UserFailure.networkFailure());
  }
}
