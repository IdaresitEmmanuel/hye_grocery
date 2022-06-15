import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hye_grocery/application/cart/cart_bloc.dart';
import 'package:hye_grocery/domain/cart/cart.dart';
import 'package:hye_grocery/infrastructure/core/helper_functions.dart';
import 'package:hye_grocery/presentation/core/theme/dimensions.dart';
import 'package:hye_grocery/presentation/core/widgets/rect_button.dart';
import 'package:hye_grocery/presentation/root/cart/widgets/cart_item_tile.dart';
import 'package:hye_grocery/presentation/root/cart/widgets/dismissible_widget.dart';
import 'package:hye_grocery/presentation/route/router.gr.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CartAppbar(),
            BlocListener<CartBloc, CartState>(
              listener: (context, state) {
                // state.clearCartFailureOrSuccess.map((either) => either.fold(
                //     (l) => ScaffoldMessenger.of(context).showSnackBar(
                //           const SnackBar(content: Text("Cart not cleared!")),
                //         ),
                //     (r) => ScaffoldMessenger.of(context).showSnackBar(
                //           const SnackBar(
                //               content: Text("Cart successfully cleared!")),
                //         )));
                // state.itemAddFailureOrSuccess.map((either) => either.fold(
                //     (l) => ScaffoldMessenger.of(context).showSnackBar(
                //           const SnackBar(
                //               content: Text("item not added to cart")),
                //         ),
                //     (r) => ScaffoldMessenger.of(context).showSnackBar(
                //           const SnackBar(content: Text("Added to cart!")),
                //         )));
                state.itemDeleteFailureOrSuccess.map((either) => either.fold(
                    (l) => ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Item not removed from cart")),
                        ),
                    (r) => ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Item removed from cart!")),
                        )));
              },
              child: Expanded(
                child: StreamBuilder(
                  stream: cart,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      var cart = snapshot.data as Cart;
                      return Column(
                        children: [
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(
                                horizontal: HDimensions.pageMargin,
                                vertical: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Total \$${cart.totalPrice.toStringAsFixed(2)}",
                                        style: TextStyle(
                                          fontSize: HDimensions.bodyTextMedium,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                      Text("No of items: ${cart.noOfItems}")
                                    ],
                                  ),
                                ),
                                // Expanded(
                                // child:
                                RectButton(
                                    width: 50,
                                    text: "Place order",
                                    onTap: () => AutoRouter.of(context)
                                        .push(const MakePayment())),
                                // ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: cart.cartItems.length,
                              itemBuilder: (context, index) {
                                return DismissibleWidget(
                                  id: cart.cartItems[index].product.id,
                                  child: CartItemTile(
                                      cartItem: cart.cartItems[index]),
                                  onDismissed: (direction) {
                                    context.read<CartBloc>().add(
                                        CartEvent.removeFromCart(
                                            productId: cart
                                                .cartItems[index].product.id));
                                  },
                                );
                              },
                            ),
                          )
                        ],
                      );
                    } else {
                      return const Center(child: Text("An error occured"));
                    }
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CartAppbar extends StatelessWidget {
  const CartAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: HDimensions.pageMargin,
          right: HDimensions.pageMargin,
          top: HDimensions.pageMargin,
          bottom: 5.0),
      child: Row(
        children: [
          InkResponse(
            onTap: () => AutoRouter.of(context).pop(),
            child: const Icon(Icons.arrow_back),
          ),
          const SizedBox(width: 10.0),
          Text("Shopping Cart",
              style: TextStyle(
                  fontSize: HDimensions.bodyTextLarge,
                  fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
