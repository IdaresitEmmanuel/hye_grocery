import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hye_grocery/application/cart/cart_bloc.dart';
import 'package:hye_grocery/domain/cart/cart.dart';
import 'package:hye_grocery/domain/product/product.dart';
import 'package:hye_grocery/infrastructure/core/helper_functions.dart';
import 'package:hye_grocery/presentation/core/theme/colors.dart';
import 'package:hye_grocery/presentation/core/theme/dimensions.dart';
import 'package:hye_grocery/presentation/root/product/widgets/expandable_text.dart';
import 'package:hye_grocery/presentation/route/router.gr.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  ValueNotifier<int> countNotifier = ValueNotifier(1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        heroTag: null,
        backgroundColor: HColors.primaryColor,
        onPressed: () {
          if (countNotifier.value >= 1) {
            context.read<CartBloc>().add(CartEvent.addToCart(
                product: widget.product, noOfProduct: countNotifier.value));
          } else {
            context
                .read<CartBloc>()
                .add(CartEvent.removeFromCart(productId: widget.product.id));
          }
        },
        label: Container(
            width: MediaQuery.of(context).size.width - 60,
            alignment: Alignment.center,
            child: const Text("Add to cart",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white))),
        isExtended: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: widget.product.id,
                  child: Container(
                    height: 360.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                Image.network(widget.product.imageUrl).image)),
                  ),
                ),
                const SizedBox(height: 5.0),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: HDimensions.pageMarginSmall, vertical: 5.0),
                  child: Text(
                    widget.product.name,
                    style: TextStyle(
                        fontSize: HDimensions.bodyTextLarge,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: HDimensions.pageMarginSmall,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$${widget.product.price}",
                            style: TextStyle(
                              fontSize: HDimensions.bodyTextLarge,
                            )),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (countNotifier.value >= 1) {
                                  countNotifier.value--;
                                }
                              },
                              child: Container(
                                height: 30.0,
                                width: 30.0,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFC7EAAE),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Center(
                                    child: Text("-",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Color(0xFF1FAA00)))),
                              ),
                            ),
                            const SizedBox(width: 10.0),
                            ValueListenableBuilder(
                                valueListenable: countNotifier,
                                builder: (context, int count, Widget? child) {
                                  return Text("$count",
                                      style: TextStyle(
                                          fontSize: HDimensions.bodyTextLarge));
                                }),
                            const SizedBox(width: 10.0),
                            GestureDetector(
                              onTap: () => countNotifier.value++,
                              child: Container(
                                height: 30.0,
                                width: 30.0,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFC7EAAE),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Center(
                                    child: Text("+",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Color(0xFF1FAA00)))),
                              ),
                            )
                          ],
                        ),
                      ],
                    )),
                Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: HDimensions.pageMarginSmall, vertical: 5.0),
                    child: ExpandableText(text: widget.product.description)),
                SizedBox(
                  height: 260.0,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: HDimensions.pageMarginSmall,
                            vertical: 5.0),
                        child: Text(
                          "Related Products",
                          style: TextStyle(
                              fontSize: HDimensions.bodyTextLarge,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: List.generate(
                              9,
                              (index) => Container(
                                  margin: const EdgeInsets.only(left: 10.0),
                                  height: 160,
                                  width: 150.0,
                                  color: HColors.cardColor)),
                        ),
                      ),
                      const SizedBox(height: 30.0)
                    ],
                  ),
                ),
                const SizedBox(height: 50.0)
              ],
            ),
          ),
          const DetailAppBar(),
        ],
      ),
    );
  }
}

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 56),
      padding: EdgeInsets.symmetric(horizontal: HDimensions.pageMarginSmall),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              AutoRouter.of(context).pop();
            },
            behavior: HitTestBehavior.translucent,
            child: const Card(
              elevation: 4.0,
              color: Colors.white,
              shape: CircleBorder(),
              child: SizedBox(
                  height: 40,
                  width: 40,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  )),
            ),
          ),
          GestureDetector(
            onTap: () {
              AutoRouter.of(context).push(const ShoppingCart());
            },
            child: StreamBuilder<Cart>(
                stream: cart,
                builder: (context, snapshot) {
                  Cart? cart = snapshot.data;
                  return Card(
                    elevation: 4.0,
                    color: Colors.white,
                    shape: const CircleBorder(),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Badge(
                        showBadge: cart != null
                            ? (cart.noOfItems == 0 ? false : true)
                            : false,
                        toAnimate: false,
                        animationType: BadgeAnimationType.scale,
                        badgeContent: Text(
                            "${cart != null ? cart.noOfItems : 0}",
                            style: const TextStyle(
                                fontSize: 10.0, color: Colors.white)),
                        child: Image.asset(
                          "assets/icons/cart_filled.png",
                          width: 24.0,
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
