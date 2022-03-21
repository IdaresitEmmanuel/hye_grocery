import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:hye_grocery/domain/cart/cart.dart';
import 'package:hye_grocery/domain/cart/cart_failure.dart';
import 'package:hye_grocery/domain/cart/cart_item.dart';
import 'package:hye_grocery/domain/cart/i_cart_facade.dart';
import 'package:hye_grocery/domain/product/product.dart';
import 'package:injectable/injectable.dart';
import 'package:hye_grocery/infrastructure/core/firebase_extensions.dart';

@Injectable(as: ICartFacade)
class CartFacade extends ICartFacade {
  final FirebaseFirestore _firestore;

  CartFacade(this._firestore);

  @override
  Future<Either<CartFailure, Unit>> addToCart(
      {required Product product, required int no}) async {
    try {
      var user = await _firestore.userDocument();
      var cartItem = CartItem(product: product, noOfProduct: no);
      user.shoppingCart.doc(product.id).set(cartItem.toMap());
      log("cart item added successfully!");
      return right(unit);
    } on PlatformException catch (e) {
      log("PlatformException:", error: e);
      return left(const CartFailure.unexpectedFailure());
    }
  }

  @override
  Future<Either<CartFailure, Unit>> clearCart() async {
    // var user = await _firestore.userDocument();
    // user.shoppingCart.
    return right(unit);
  }

  @override
  Stream<Either<CartFailure, Cart>> getCartItems() async* {
    var user = await _firestore.userDocument();
    yield* user.shoppingCart.snapshots().map((event) {
      event.docs;
      var listOfDocs = event.docs;
      List<CartItem> cartItems = [];
      double totalPrice = 0;
      int noOfItems = 0;
      for (var doc in listOfDocs) {
        var item = CartItem.fromMap(doc.data() as Map<String, dynamic>);
        totalPrice += item.product.price * item.noOfProduct;
        noOfItems += item.noOfProduct;
        cartItems.add(item);
      }
      return right(Cart(
          cartItems: cartItems, totalPrice: totalPrice, noOfItems: noOfItems));
    });
  }

  @override
  Future<Either<CartFailure, Unit>> removeFromCart(
      {required String productId}) async {
    try {
      var user = await _firestore.userDocument();
      user.shoppingCart.doc(productId).delete();
      log("cart item deleted successfully!");
      return right(unit);
    } on PlatformException catch (e) {
      log("PlatformException:", error: e);
      return left(const CartFailure.unexpectedFailure());
    }
  }
}
