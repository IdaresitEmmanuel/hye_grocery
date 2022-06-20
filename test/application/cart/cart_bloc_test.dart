import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hye_grocery/application/cart/cart_bloc.dart';
import 'package:hye_grocery/domain/cart/i_cart_facade.dart';
import 'package:hye_grocery/domain/product/product.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'cart_bloc_test.mocks.dart';

@GenerateMocks([ICartFacade])
void main() {
  MockICartFacade mockICartFacade = MockICartFacade();
  final productList = [
    Product(
        id: 'id',
        name: 'name',
        description: 'description',
        rating: 5.0,
        price: 500,
        imageUrl: 'imageUrl',
        storageLocation: 'storageLocation',
        category: 'category')
  ];

  test(
    'first state should be the initial state',
    () => expect(CartBloc(mockICartFacade).state, CartState.initial()),
  );

  blocTest(
    'add to cart',
    build: () {
      when(mockICartFacade.addToCart(
              product: productList.first, no: productList.length))
          .thenAnswer((_) async => const Right(unit));
      return CartBloc(mockICartFacade);
    },
    act: (CartBloc cartBloc) => cartBloc.add(CartEvent.addToCart(
        product: productList.first, noOfProduct: productList.length)),
    expect: () => [
      CartState.initial()
          .copyWith(itemAddFailureOrSuccess: some(const Right(unit))),
      CartState.initial().copyWith(itemAddFailureOrSuccess: none()),
    ],
  );

  blocTest(
    'remove from cart',
    build: () {
      when(mockICartFacade.removeFromCart(productId: productList.first.id))
          .thenAnswer((_) async => const Right(unit));
      return CartBloc(mockICartFacade);
    },
    act: (CartBloc cartBloc) =>
        cartBloc.add(CartEvent.removeFromCart(productId: productList.first.id)),
    expect: () => [
      CartState.initial()
          .copyWith(itemDeleteFailureOrSuccess: some(const Right(unit))),
      CartState.initial().copyWith(itemDeleteFailureOrSuccess: none()),
    ],
  );

  blocTest(
    'clear cart',
    build: () {
      when(mockICartFacade.clearCart())
          .thenAnswer((_) async => const Right(unit));
      return CartBloc(mockICartFacade);
    },
    act: (CartBloc cartBloc) => cartBloc.add(const CartEvent.clearCart()),
    expect: () => [
      CartState.initial()
          .copyWith(clearCartFailureOrSuccess: some(const Right(unit))),
      CartState.initial().copyWith(clearCartFailureOrSuccess: none()),
    ],
  );
}
