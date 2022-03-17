import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hye_grocery/domain/product/product.dart';
import 'package:hye_grocery/presentation/core/theme/colors.dart';
import 'package:hye_grocery/presentation/core/theme/dimensions.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        heroTag: null,
        backgroundColor: HColors.primaryColor,
        onPressed: () {},
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
                        Text("- 7 +",
                            style: TextStyle(
                              fontSize: HDimensions.bodyTextLarge,
                            )),
                      ],
                    )),
                Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: HDimensions.pageMarginSmall, vertical: 5.0),
                    child: const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus "
                        "pharetra tincidunt posuere. Curabitur id maximus risus. Nam tempus"
                        "nec lorem pulvinar pretium. Lorem ipsum dolor sit amet, consectet"
                        "ur adipiscing elit. Praesent gravida sed mauris ac mollis. More"
                        " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus "
                        "pharetra tincidunt posuere. Curabitur id maximus risus. Nam tempus"
                        "nec lorem pulvinar pretium. Lorem ipsum dolor sit amet, consectet"
                        "ur adipiscing elit. Praesent gravida sed mauris ac mollis. More")),
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
                  height: 40, width: 40, child: Icon(Icons.arrow_back)),
            ),
          ),
          GestureDetector(
            onTap: () {},
            behavior: HitTestBehavior.translucent,
            child: const Card(
              elevation: 4.0,
              color: Colors.white,
              shape: CircleBorder(),
              child: SizedBox(
                  height: 40, width: 40, child: Icon(Icons.shopping_bag)),
            ),
          )
        ],
      ),
    );
  }
}
