import 'package:dartz/dartz.dart';
import 'package:hye_grocery/domain/auth/auth_failure.dart';
import 'package:hye_grocery/domain/auth/user.dart';
import 'package:hye_grocery/domain/auth/value_field_objects.dart';

abstract class IAuthFacade {
  Future<Option<MyUser>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> signInUser(
      {required EmailAddress emailAddress, required Password password});

  Future<Either<AuthFailure, Unit>> signUpUser(
      {required UserName userName,
      required EmailAddress emailAddress,
      required PhoneNumber phoneNumber,
      required Password password});

  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
