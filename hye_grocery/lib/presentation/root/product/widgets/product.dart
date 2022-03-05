import 'package:flutter/material.dart';
import 'package:hye_grocery/presentation/core/theme/colors.dart';
import 'package:hye_grocery/presentation/core/theme/dimensions.dart';

class Product extends StatelessWidget {
  const Product(
      {Key? key,
      required this.imageString,
      required this.name,
      required this.price,
      this.borderRadius = 10.0})
      : super(key: key);
  final String imageString;
  final String name;
  final String price;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: 40.0,
      decoration: BoxDecoration(
          border: Border.all(color: HColors.cardColor),
          borderRadius: BorderRadius.circular(borderRadius)),
      child: Column(
        children: [
          Expanded(
              child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(borderRadius),
                    topRight: Radius.circular(borderRadius)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      imageString,
                    ).image)),
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
                    Text(name,
                        style: Theme.of(context).primaryTextTheme.bodyMedium),
                    Text(
                      "\$$price",
                      style: Theme.of(context).primaryTextTheme.bodyMedium,
                    ),
                  ],
                ),
                Container(
                  height: 36.0,
                  width: 36.0,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFD600),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/images/cart_filled_white.png",
                      fit: BoxFit.fitWidth,
                      width: HDimensions.iconSize,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
