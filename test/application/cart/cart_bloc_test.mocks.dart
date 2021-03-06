// Mocks generated by Mockito 5.2.0 from annotations
// in hye_grocery/test/application/cart/cart_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:hye_grocery/domain/cart/cart.dart' as _i6;
import 'package:hye_grocery/domain/cart/cart_failure.dart' as _i5;
import 'package:hye_grocery/domain/cart/i_cart_facade.dart' as _i3;
import 'package:hye_grocery/domain/product/product.dart' as _i7;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

/// A class which mocks [ICartFacade].
///
/// See the documentation for Mockito's code generation for more information.
class MockICartFacade extends _i1.Mock implements _i3.ICartFacade {
  MockICartFacade() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Stream<_i2.Either<_i5.CartFailure, _i6.Cart>> getCartItems() =>
      (super.noSuchMethod(Invocation.method(#getCartItems, []),
              returnValue:
                  Stream<_i2.Either<_i5.CartFailure, _i6.Cart>>.empty())
          as _i4.Stream<_i2.Either<_i5.CartFailure, _i6.Cart>>);
  @override
  _i4.Future<_i2.Either<_i5.CartFailure, _i2.Unit>> addToCart(
          {_i7.Product? product, int? no}) =>
      (super.noSuchMethod(
              Invocation.method(#addToCart, [], {#product: product, #no: no}),
              returnValue: Future<_i2.Either<_i5.CartFailure, _i2.Unit>>.value(
                  _FakeEither_0<_i5.CartFailure, _i2.Unit>()))
          as _i4.Future<_i2.Either<_i5.CartFailure, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i5.CartFailure, _i2.Unit>> removeFromCart(
          {String? productId}) =>
      (super.noSuchMethod(
              Invocation.method(#removeFromCart, [], {#productId: productId}),
              returnValue: Future<_i2.Either<_i5.CartFailure, _i2.Unit>>.value(
                  _FakeEither_0<_i5.CartFailure, _i2.Unit>()))
          as _i4.Future<_i2.Either<_i5.CartFailure, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i5.CartFailure, _i2.Unit>> clearCart() =>
      (super.noSuchMethod(Invocation.method(#clearCart, []),
              returnValue: Future<_i2.Either<_i5.CartFailure, _i2.Unit>>.value(
                  _FakeEither_0<_i5.CartFailure, _i2.Unit>()))
          as _i4.Future<_i2.Either<_i5.CartFailure, _i2.Unit>>);
}
