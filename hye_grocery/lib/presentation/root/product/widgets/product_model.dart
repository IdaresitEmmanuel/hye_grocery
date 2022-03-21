import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hye_grocery/domain/product/product.dart';
import 'package:hye_grocery/presentation/core/theme/colors.dart';
import 'package:hye_grocery/presentation/core/theme/dimensions.dart';
import 'package:hye_grocery/presentation/route/router.gr.dart';

class ProductModel extends StatelessWidget {
  const ProductModel(
      {Key? key, required this.product, this.borderRadius = 10.0})
      : super(key: key);
  final Product product;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(ProductDetailRoute(product: product));
      },
      child: Container(
        height: 80.0,
        width: 40.0,
        decoration: BoxDecoration(
            border: Border.all(color: HColors.cardColor),
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Column(
          children: [
            Expanded(
                child: Hero(
              tag: product.id,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(borderRadius),
                      topRight: Radius.circular(borderRadius)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.network(
                      product.imageUrl,
                    ).image,
                  ),
                ),
              ),
            )),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(product.name,
                          style: Theme.of(context).primaryTextTheme.bodyMedium),
                      Text(
                        "\$${product.price}",
                        style: Theme.of(context).primaryTextTheme.bodyMedium,
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 36.0,
                      width: 36.0,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFD600),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Center(
                        child: Image.asset(
                          "assets/icons/cart_filled_white.png",
                          fit: BoxFit.fitWidth,
                          width: HDimensions.iconSize,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
