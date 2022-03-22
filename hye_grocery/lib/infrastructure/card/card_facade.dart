import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:hye_grocery/domain/card/card_failure.dart';
import 'package:hye_grocery/domain/card/card.dart';
import 'package:dartz/dartz.dart';
import 'package:hye_grocery/domain/card/i_card_facade.dart';
import 'package:hye_grocery/domain/card/value_field_objects.dart';
import 'package:injectable/injectable.dart';
import 'package:hye_grocery/infrastructure/core/firebase_extensions.dart';

@Injectable(as: ICardFacade)
class CardFacade extends ICardFacade {
  final FirebaseFirestore _firestore;

  CardFacade(this._firestore);
  @override
  Future<Either<CardFailure, Unit>> addOrEditCard(
      {required CardName name,
      required CardNumber cardNumber,
      required CardDate date,
      required CVV cvv}) async {
    String cardNoStr = "";
    try {
      name.getOrCrash();
      cardNoStr = cardNumber.getOrCrash();
      date.getOrCrash();
      cvv.getOrCrash();
    } catch (e) {
      log("value crashed error");
      return left(const CardFailure.unexpectedFailure());
    }
    try {
      final user = await _firestore.userDocument();
      final card = Card(
          name: name, cardNumber: cardNumber, cardDate: date, cardCVV: cvv);
      user.cards.doc(cardNoStr).set(card.toMap());
      log("card update added");
      return right(unit);
    } on PlatformException catch (e) {
      log("Platform exception", error: e);
      return left(const CardFailure.unexpectedFailure());
    }
  }

  @override
  Future<Either<CardFailure, List<Card>>> getAllCards() async {
    try {
      final user = await _firestore.userDocument();
      final result = await user.cards.get();
      List<QueryDocumentSnapshot<Object?>> docs = result.docs;
      List<Card> cards = [];

      for (var doc in docs) {
        var card = Card.fromMap(doc.data() as Map<String, dynamic>);
        cards.add(card);
      }
      log("all cards retrieved succesfully");
      return right(cards);
    } catch (e) {
      log("error occured getting all cards", error: e);
      return left(const CardFailure.unexpectedFailure());
    }
  }

  @override
  Future<Either<CardFailure, Card>> getCard(
      {required CardNumber cardNumber}) async {
    final cardNoStr = cardNumber.getOrCrash();
    try {
      final user = await _firestore.userDocument();
      final result = await user.cards.doc(cardNoStr).get();
      log("card request successful");
      return right(Card.fromMap(result as Map<String, dynamic>));
    } catch (e) {
      log("an error occured", error: e);
      return left(const CardFailure.unexpectedFailure());
    }
  }

  @override
  Future<Either<CardFailure, Unit>> removeCard(
      {required CardNumber cardNumber}) async {
    try {
      final cardNoStr = cardNumber.getOrCrash();
      final user = await _firestore.userDocument();
      await user.cards.doc(cardNoStr).delete();
      log("card deleted successful");
      return right(unit);
    } catch (e) {
      log("an error occured", error: e);
      return left(const CardFailure.unexpectedFailure());
    }
  }

  @override
  Future<Either<CardFailure, Unit>> setPaymentMethod(
      {required String method}) async {
    try {
      final user = await _firestore.userDocument();
      final doc = user.distinctCollection.doc('payment_method');
      doc.set({"payment_method": method});
      log("payment method has been set");
      return right(unit);
    } catch (e) {
      log("an error occured", error: e);
      return left(const CardFailure.unexpectedFailure());
    }
  }

  @override
  Future<Either<CardFailure, String>> getPaymentMethod() async {
    try {
      final user = await _firestore.userDocument();
      final doc = await user.distinctCollection.doc('payment_method').get();
      String tempPaymentMethod =
          (doc.data() as Map<String, dynamic>)['payment_method'];
      log("payment method retrieved");
      return right(tempPaymentMethod);
    } catch (e) {
      log("an error occured in getPaymentMethod", error: e);
      return left(const CardFailure.unexpectedFailure());
    }
  }
}
