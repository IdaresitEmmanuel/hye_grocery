import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hye_grocery/application/cart/cart_bloc.dart';
import 'package:hye_grocery/domain/cart/cart_item.dart';
import 'package:hye_grocery/presentation/core/theme/dimensions.dart';

class CartItemTile extends StatefulWidget {
  const CartItemTile({Key? key, required this.cartItem}) : super(key: key);
  final CartItem cartItem;
  @override
  CartItemTileState createState() => CartItemTileState();
}

class CartItemTileState extends State<CartItemTile> {
  late ValueNotifier<int> countNotifier;
  @override
  void initState() {
    countNotifier = ValueNotifier(widget.cartItem.noOfProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      height: 100,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: const Color.fromARGB(123, 243, 242, 242),
          borderRadius: BorderRadius.circular(6)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
          child: Row(
            children: [
              Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.network(widget.cartItem.product.imageUrl)
                            .image),
                    borderRadius: BorderRadius.circular(6)),
              ),
              const SizedBox(width: 20.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.cartItem.product.name,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text("\$${widget.cartItem.product.price}"),
                  ],
                ),
              )
            ],
          ),
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                if (countNotifier.value > 1) {
                  countNotifier.value--;
                  context.read<CartBloc>().add(CartEvent.addToCart(
                      product: widget.cartItem.product,
                      noOfProduct: countNotifier.value));
                } else {
                  context.read<CartBloc>().add(CartEvent.removeFromCart(
                        productId: widget.cartItem.product.id,
                      ));
                }
              },
              child: Container(
                height: 30.0,
                width: 30.0,
                decoration: BoxDecoration(
                    color: const Color(0xFFC7EAAE),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    "-",
                    style: TextStyle(fontSize: 20, color: Color(0xFF1FAA00)),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10.0),
            ValueListenableBuilder(
                valueListenable: countNotifier,
                builder: (context, int count, Widget? child) {
                  return Text("$count",
                      style: TextStyle(fontSize: HDimensions.bodyTextLarge));
                }),
            const SizedBox(width: 10.0),
            GestureDetector(
              onTap: () {
                countNotifier.value++;
                context.read<CartBloc>().add(CartEvent.addToCart(
                    product: widget.cartItem.product,
                    noOfProduct: countNotifier.value));
              },
              child: Container(
                height: 30.0,
                width: 30.0,
                decoration: BoxDecoration(
                    color: const Color(0xFFC7EAAE),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text("+",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xFF1FAA00)))),
              ),
            )
          ],
        )
      ]),
    );
  }
}
