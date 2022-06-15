import 'package:dartz/dartz.dart';
import 'package:hye_grocery/domain/card/card.dart';
import 'package:hye_grocery/domain/card/card_failure.dart';
import 'package:hye_grocery/domain/card/value_field_objects.dart';

abstract class ICardFacade {
  Future<Either<CardFailure, List<Card>>> getAllCards();
  Future<Either<CardFailure, Card>> getCard({required CardNumber cardNumber});
  Future<Either<CardFailure, Unit>> addOrEditCard(
      {required CardName name,
      required CardNumber cardNumber,
      required CardDate date,
      required CVV cvv});
  Future<Either<CardFailure, Unit>> removeCard(
      {required CardNumber cardNumber});
  Future<Either<CardFailure, Unit>> setPaymentMethod({required String method});
  Future<Either<CardFailure, String>> getPaymentMethod();
}
