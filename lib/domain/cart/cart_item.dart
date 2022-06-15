import 'dart:convert';

import 'package:hye_grocery/domain/product/product.dart';

class CartItem {
  Product product;
  int noOfProduct;
  CartItem({
    required this.product,
    required this.noOfProduct,
  });

  factory CartItem.empty() =>
      CartItem(product: Product.empty(), noOfProduct: 0);

  CartItem copyWith({
    Product? product,
    int? noOfProduct,
  }) {
    return CartItem(
      product: product ?? this.product,
      noOfProduct: noOfProduct ?? this.noOfProduct,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'product': product.toMap(),
      'noOfProduct': noOfProduct,
    };
  }

  factory CartItem.fromMap(Map<String, dynamic> map) {
    return CartItem(
      product: Product.fromMap(map['product']),
      noOfProduct: map['noOfProduct']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CartItem.fromJson(String source) =>
      CartItem.fromMap(json.decode(source));

  @override
  String toString() => 'CartItem(product: $product, noOfProduct: $noOfProduct)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CartItem &&
        other.product == product &&
        other.noOfProduct == noOfProduct;
  }

  @override
  int get hashCode => product.hashCode ^ noOfProduct.hashCode;
}
