import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:hye_grocery/domain/cart/cart_item.dart';

class Cart {
  List<CartItem> cartItems;
  double totalPrice;
  int noOfItems;
  Cart({
    required this.cartItems,
    required this.totalPrice,
    required this.noOfItems,
  });

  factory Cart.empty() => Cart(cartItems: [], totalPrice: 0.0, noOfItems: 0);

  Cart copyWith({
    List<CartItem>? cartItems,
    double? totalPrice,
    int? noOfItems,
  }) {
    return Cart(
      cartItems: cartItems ?? this.cartItems,
      totalPrice: totalPrice ?? this.totalPrice,
      noOfItems: noOfItems ?? this.noOfItems,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cartItems': cartItems.map((x) => x.toMap()).toList(),
      'totalPrice': totalPrice,
      'noOfItems': noOfItems,
    };
  }

  factory Cart.fromMap(Map<String, dynamic> map) {
    return Cart(
      cartItems: List<CartItem>.from(
          map['cartItems']?.map((x) => CartItem.fromMap(x))),
      totalPrice: map['totalPrice']?.toDouble() ?? 0.0,
      noOfItems: map['noOfItems'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Cart.fromJson(String source) => Cart.fromMap(json.decode(source));

  @override
  String toString() =>
      'Cart(cartItems: $cartItems, totalPrice: $totalPrice, noOfItems: $noOfItems)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is Cart &&
        listEquals(other.cartItems, cartItems) &&
        other.totalPrice == totalPrice &&
        other.noOfItems == noOfItems;
  }

  @override
  int get hashCode =>
      cartItems.hashCode ^ totalPrice.hashCode ^ noOfItems.hashCode;
}
