part of 'cart_bloc.dart';

@freezed
abstract class CartEvent with _$CartEvent {
  const factory CartEvent.addToCart(
      {required Product product, required int noOfProduct}) = AddToCart;
  const factory CartEvent.removeFromCart({required String productId}) =
      RemoveFromCart;
  const factory CartEvent.clearCart() = ClearCart;
}
