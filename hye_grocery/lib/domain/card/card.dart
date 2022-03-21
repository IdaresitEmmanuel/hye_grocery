import 'dart:convert';

import 'package:hye_grocery/domain/card/value_field_objects.dart';

class Card {
  final CardName name;
  final CardNumber cardNumber;
  final CardDate cardDate;
  final CardCVV cardCVV;
  Card({
    required this.name,
    required this.cardNumber,
    required this.cardDate,
    required this.cardCVV,
  });

  Card copyWith({
    CardName? name,
    CardNumber? cardNumber,
    CardDate? cardDate,
    CardCVV? cardCVV,
  }) {
    return Card(
      name: name ?? this.name,
      cardNumber: cardNumber ?? this.cardNumber,
      cardDate: cardDate ?? this.cardDate,
      cardCVV: cardCVV ?? this.cardCVV,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name.getOrCrash(),
      'cardNumber': cardNumber.getOrCrash(),
      'cardDate': cardDate.getOrCrash(),
      'cardCVV': cardCVV.getOrCrash(),
    };
  }

  factory Card.fromMap(Map<String, dynamic> map) {
    return Card(
      name: CardName(map['name']),
      cardNumber: CardNumber(map['cardNumber']),
      cardDate: CardDate(map['cardDate']),
      cardCVV: CardCVV(map['cardCVV']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Card.fromJson(String source) => Card.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Card(name: $name, cardNumber: $cardNumber, cardDate: $cardDate, cardCVV: $cardCVV)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Card &&
        other.name == name &&
        other.cardNumber == cardNumber &&
        other.cardDate == cardDate &&
        other.cardCVV == cardCVV;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        cardNumber.hashCode ^
        cardDate.hashCode ^
        cardCVV.hashCode;
  }
}
