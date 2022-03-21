import 'package:dartz/dartz.dart';
import 'package:hye_grocery/domain/core/failures.dart';
import 'package:hye_grocery/domain/core/value_objects.dart';
import 'package:hye_grocery/domain/core/value_validators.dart';

class CardNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory CardNumber(String input) {
    return CardNumber._(value: validateCardNumber(input));
  }

  const CardNumber._({required this.value});
}

class CardName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory CardName(String input) {
    return CardName._(value: validateCardName(input));
  }

  const CardName._({required this.value});
}

class CardDate extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory CardDate(String input) {
    return CardDate._(value: validateCardName(input));
  }

  const CardDate._({required this.value});
}

class CardCVV extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory CardCVV(String input) {
    return CardCVV._(value: validateCardName(input));
  }

  const CardCVV._({required this.value});
}
