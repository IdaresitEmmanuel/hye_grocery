import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hye_grocery/domain/cart/cart_failure.dart';
import 'package:hye_grocery/domain/cart/i_cart_facade.dart';
import 'package:hye_grocery/domain/product/product.dart';
import 'package:injectable/injectable.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  final ICartFacade _iCartFacade;
  CartBloc(this._iCartFacade) : super(CartState.initial());

  @override
  Stream<CartState> mapEventToState(CartEvent event) async* {
    yield* event.map(addToCart: (event) async* {
      final result = await _iCartFacade.addToCart(
          product: event.product, no: event.noOfProduct);
      yield state.copyWith(itemAddFailureOrSuccess: some(result));
      yield state.copyWith(itemAddFailureOrSuccess: none());
    }, removeFromCart: (event) async* {
      final result =
          await _iCartFacade.removeFromCart(productId: event.productId);
      yield state.copyWith(itemDeleteFailureOrSuccess: some(result));
      yield state.copyWith(itemDeleteFailureOrSuccess: none());
    }, clearCart: (event) async* {
      final result = await _iCartFacade.clearCart();
      yield state.copyWith(clearCartFailureOrSuccess: some(result));
      yield state.copyWith(clearCartFailureOrSuccess: none());
    });
  }
}
