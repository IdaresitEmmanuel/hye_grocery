import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hye_grocery/application/product/product_bloc.dart';
import 'package:hye_grocery/domain/product/i_product_facade.dart';
import 'package:hye_grocery/domain/product/product.dart';
import 'package:hye_grocery/domain/product/product_failure.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'product_bloc_test.mocks.dart';

@GenerateMocks([IProductFacade])
void main() {
  MockIProductFacade mockIProductFacade = MockIProductFacade();

  final productList = [
    Product(
        id: 'id',
        name: 'name',
        description: 'description',
        rating: 5.0,
        price: 50.0,
        imageUrl: 'imageUrl',
        storageLocation: 'storageLocation',
        category: 'category')
  ];

  test(
    'the first state should be the initial state',
    () => expect(ProductBloc(mockIProductFacade).state, ProductState.initial()),
  );

  group('required for products', () {
    blocTest(
      'when required for product is successful',
      build: () {
        when(mockIProductFacade.getProducts())
            .thenAnswer((_) async => Right(productList));
        return ProductBloc(mockIProductFacade);
      },
      act: (ProductBloc productBloc) =>
          productBloc.add(const ProductEvent.requestProduct()),
      expect: () => [
        ProductState.initial().copyWith(isLoading: true),
        ProductState.initial().copyWith(
          isLoading: false,
          products: productList,
          productRequestFailureOrSucces: some(const Right(unit)),
        ),
      ],
    );

    blocTest(
      'when required for product is unsuccessful',
      build: () {
        when(mockIProductFacade.getProducts()).thenAnswer(
            (_) async => const Left(ProductFailure.networkFailure()));
        return ProductBloc(mockIProductFacade);
      },
      act: (ProductBloc productBloc) =>
          productBloc.add(const ProductEvent.requestProduct()),
      expect: () => [
        ProductState.initial().copyWith(isLoading: true),
        ProductState.initial().copyWith(
          isLoading: false,
          products: [],
          productRequestFailureOrSucces:
              some(const Left(ProductFailure.networkFailure())),
        ),
      ],
    );
  });
}
