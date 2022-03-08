import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:hye_grocery/domain/product/i_product_facade.dart';
import 'package:hye_grocery/domain/product/product.dart';
import 'package:hye_grocery/domain/product/product_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_event.dart';
part 'product_state.dart';

part 'product_bloc.freezed.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final IProductFacade _iProductFacade;
  ProductBloc(this._iProductFacade) : super(ProductState.initial());

  @override
  Stream<ProductState> mapEventToState(ProductEvent event) async* {
    yield* event.map(requestProduct: (event) async* {
      yield state.copyWith(isLoading: true);
      final result = await _iProductFacade.getProducts();
      yield state.copyWith(isLoading: false);
      yield result.fold(
        (l) => state.copyWith(
            products: [], productRequestFailureOrSucces: some(left(l))),
        (r) => state.copyWith(
            products: r, productRequestFailureOrSucces: some(right(unit))),
      );
    });
  }
}
