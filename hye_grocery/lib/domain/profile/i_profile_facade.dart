import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:hye_grocery/domain/auth/value_field_objects.dart';
import 'package:hye_grocery/domain/profile/profile_failure.dart';

abstract class IProfileFacade {
  Future<Either<ProfileFailure, Unit>> updateUserProfile(
      {required UserName? userName, required PhoneNumber? phoneNumber});
  Future<Either<ProfileFailure, Unit>> deleteProfileImage(
      {required String imageStorageLocation});
  Future<Either<ProfileFailure, Unit>> updateProfileImage(
      {required String fileName, required File file});
}
