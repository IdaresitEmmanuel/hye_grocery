import 'package:dartz/dartz.dart';
import 'package:hye_grocery/domain/cart/cart.dart';
import 'package:hye_grocery/domain/cart/cart_failure.dart';
import 'package:hye_grocery/domain/product/product.dart';

abstract class ICartFacade {
  Stream<Either<CartFailure, Cart>> getCartItems();
  Future<Either<CartFailure, Unit>> addToCart(
      {required Product product, required int no});
  Future<Either<CartFailure, Unit>> removeFromCart({required String productId});
  Future<Either<CartFailure, Unit>> clearCart();
}
