import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:hye_grocery/domain/product/i_product_facade.dart';
import 'package:hye_grocery/domain/product/product_failure.dart';
import 'package:hye_grocery/domain/product/product.dart';
import 'package:injectable/injectable.dart';
import 'package:hye_grocery/infrastructure/core/firebase_extensions.dart';

@Injectable(as: IProductFacade)
class ProductFacade extends IProductFacade {
  final FirebaseFirestore _firestore;
  ProductFacade(this._firestore);
  @override
  Future<Either<ProductFailure, List<Product>>> getProducts() async {
    try {
      QuerySnapshot<Object?> result = await _firestore.productsCollection.get();
      List<Product> tempProductList = [];
      for (var element in result.docs) {
        final product = Product.fromMap(element.data() as Map<String, dynamic>);
        tempProductList.add(product);
      }
      return right(tempProductList);
    } catch (e) {
      debugPrint(e.toString());
      return left(const ProductFailure.networkFailure());
    }
  }
}
