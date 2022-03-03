import 'package:dartz/dartz.dart';
import 'package:hye_grocery/domain/core/failures.dart';
import 'package:hye_grocery/domain/core/value_objects.dart';
import 'package:hye_grocery/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(value: validateEmailAddress(input));
  }

  const EmailAddress._({required this.value});
}

class UserName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UserName(String input) {
    return UserName._(value: validateUserName(input));
  }

  const UserName._({required this.value});
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(value: validatePassword(input));
  }

  const Password._({required this.value});
}

class Password2 extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password2(String p1, String p2) {
    return Password2._(value: validatePassword2(p1, p2));
  }

  const Password2._({required this.value});
}

class PhoneNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PhoneNumber(String input, {bool optional = true}) {
    return PhoneNumber._(
        value: optional
            ? validatePhoneNumberOptional(input)
            : validatePhoneNumber(input));
  }

  const PhoneNumber._({required this.value});
}
