import 'package:dartz/dartz.dart';
import 'package:hye_grocery/domain/product/product.dart';
import 'package:hye_grocery/domain/product/product_failure.dart';

abstract class IProductFacade {
  Future<Either<ProductFailure, List<Product>>> getProducts();
}
