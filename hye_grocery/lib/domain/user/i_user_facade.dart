import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:hye_grocery/domain/auth/user.dart';
import 'package:hye_grocery/domain/auth/value_field_objects.dart';
import 'package:hye_grocery/domain/user/user_failure.dart';

abstract class IUserFacade {
  Future<Either<UserFailure, MyUser>> getUser();
  Future<Either<UserFailure, MyUser>> createOrUpdateUser(
      {required UserName? userName, required PhoneNumber? phoneNumber});
  Future<Either<UserFailure, Unit>> deleteUser();
  Future<Either<UserFailure, Unit>> deleteProfileImage(
      {required String imageStorageLocation});
  Future<Either<UserFailure, Unit>> updateProfileImage(
      {required String fileName, required File file});
}
