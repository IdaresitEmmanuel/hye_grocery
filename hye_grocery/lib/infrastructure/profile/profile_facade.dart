import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:hye_grocery/domain/auth/value_field_objects.dart';
import 'package:hye_grocery/domain/profile/i_profile_facade.dart';
import 'package:hye_grocery/domain/profile/profile_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:hye_grocery/infrastructure/core/firebase_extensions.dart';

@LazySingleton(as: IProfileFacade)
class ProfileFacade extends IProfileFacade {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;
  final FirebaseStorage _firebaseStorage;
  ProfileFacade(this._firebaseAuth, this._firestore, this._firebaseStorage);

  @override
  Future<Either<ProfileFailure, Unit>> updateUserProfile(
      {required UserName? userName, required PhoneNumber? phoneNumber}) async {
    String userNameStr = "";
    String phoneNumberStr = "";
    try {
      if (userName != null) {
        userNameStr = userName.getOrCrash();
      }
      if (phoneNumber != null) {
        phoneNumberStr = phoneNumber.getOrCrash();
      }
    } catch (e) {
      log("Fetch value error occurred", error: e);
      return left(const ProfileFailure.invalidValueFailure());
    }
    final firebaseUser = _firebaseAuth.currentUser;

    if (firebaseUser != null) {
      try {
        await _firestore.usersCollection
            .doc(firebaseUser.uid)
            .update({"userName": userNameStr, "phoneNo": phoneNumberStr});
        log("Profile edit successful!");
        return right(unit);
      } catch (e) {
        log("profileEditError:", error: e);
        return left(const ProfileFailure.profileEditFailure());
      }
    }
    log("unexpected profile edit error");
    return left(const ProfileFailure.profileEditFailure());
  }

  // @override
  // Future<Either<UserFailure, Unit>> deleteUser() async {
  //   final firebaseUser = _firebaseAuth.currentUser;
  //   if (firebaseUser != null) {
  //     await _firestore.usersCollection.doc(firebaseUser.uid).delete();
  //     return right(unit);
  //   }
  //   return left(const UserFailure.networkFailure());
  // }

  @override
  Future<Either<ProfileFailure, Unit>> deleteProfileImage(
      {required String imageStorageLocation}) async {
    final firebaseUser = _firebaseAuth.currentUser;
    if (firebaseUser != null) {
      try {
        await _firebaseStorage.ref(imageStorageLocation).delete();
        await _firestore.usersCollection
            .doc(firebaseUser.uid)
            .update({"photoUrl": "", "photoStorageLocation": ""});

        return right(unit);
      } catch (e) {
        log("error occured while deleting image", error: e);
        return left(const ProfileFailure.networkFailure());
      }
    }
    return left(const ProfileFailure.profileDoesNotExist());
  }

  @override
  Future<Either<ProfileFailure, Unit>> updateProfileImage(
      {required String fileName, required File file}) async {
    final firebaseUser = _firebaseAuth.currentUser;
    if (firebaseUser != null) {
      try {
        final result = await _firebaseStorage
            .ref("profile_images/${firebaseUser.uid}/$fileName")
            .putFile(file);
        final storageLocation = await result.ref.getMetadata();

        final url = await result.ref.getDownloadURL();
        log("this is the download url $url");
        await _firestore.usersCollection.doc(firebaseUser.uid).update({
          "photoUrl": url,
          "photoStorageLocation": storageLocation.fullPath
        });

        return right(unit);
      } catch (e) {
        //error
        return left(const ProfileFailure.imageEditFailure());
      }
    }
    return left(const ProfileFailure.profileDoesNotExist());
  }
}
