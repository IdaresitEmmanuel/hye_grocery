import 'package:dartz/dartz.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateUserName(String input) {
  if (input.trim().isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.emptyUserName(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const regExp =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  if (RegExp(regExp).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword2(String p1, String p2) {
  if (p1 == p2) {
    return right(p2);
  } else {
    return left(ValueFailure.passwordMisMatch(failedValue: p2));
  }
}

Either<ValueFailure<String>, String> validatePhoneNumberOptional(String input) {
  String regex = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  if (RegExp(regex).hasMatch(input)) {
    return right(input);
  } else if (input.trim().isEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPhoneNumber(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePhoneNumber(String input) {
  String regex = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  if (RegExp(regex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPhoneNumber(failedValue: input));
  }
}
