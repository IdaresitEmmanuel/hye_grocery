part of 'cart_bloc.dart';

@freezed
abstract class CartState with _$CartState {
  const factory CartState({
    required Option<Either<CartFailure, Unit>> itemDeleteFailureOrSuccess,
    required Option<Either<CartFailure, Unit>> itemAddFailureOrSuccess,
    required Option<Either<CartFailure, Unit>> clearCartFailureOrSuccess,
  }) = _CartState;
  factory CartState.initial() => CartState(
      itemDeleteFailureOrSuccess: none(),
      itemAddFailureOrSuccess: none(),
      clearCartFailureOrSuccess: none());
}
