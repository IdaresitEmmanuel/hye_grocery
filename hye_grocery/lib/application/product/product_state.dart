part of 'product_bloc.dart';

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState(
      {required bool isLoading,
      required List<Product> products,
      required Option<Either<ProductFailure, Unit>>
          productRequestFailureOrSucces}) = _ProductState;
  factory ProductState.initial() => ProductState(
      isLoading: true, products: [], productRequestFailureOrSucces: none());
}
