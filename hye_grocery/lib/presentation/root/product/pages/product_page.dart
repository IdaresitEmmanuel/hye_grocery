import 'package:flutter/material.dart';
import 'package:hye_grocery/presentation/core/theme/colors.dart';
import 'package:hye_grocery/presentation/core/widgets/safe_fold.dart';
import 'package:hye_grocery/presentation/root/product/widgets/product.dart';
import 'package:hye_grocery/presentation/root/product/widgets/search_widget.dart';
import 'package:hye_grocery/presentation/root/product/widgets/tab_bar_circle_indicator.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SafeFold(
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              child: ListTile(
                title: Text("Hello Emmanuel",
                    style: Theme.of(context)
                        .primaryTextTheme
                        .bodyLarge!
                        .copyWith(
                            color: HColors.iconColor,
                            fontWeight: FontWeight.bold)),
                trailing: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                          image:
                              Image.asset("assets/images/hyebreed.jpg").image)),
                ),
              ),
            ),
            const SearchProduct(),
            TabBar(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                isScrollable: true,
                controller: _tabController,
                indicatorColor: HColors.primaryColor,
                labelStyle: const TextStyle(fontSize: 16.0),
                indicator: CircleTabDecoration(),
                unselectedLabelStyle:
                    TextStyle(fontSize: 12.0, color: HColors.captionColor),
                tabs: const [
                  Tab(text: "Vegetables"),
                  Tab(text: "Fruits"),
                  Tab(text: "Drinks"),
                  Tab(text: "Dairy"),
                  Tab(text: "Food"),
                  Tab(text: "Cakes"),
                ]),
            Expanded(
              child: TabBarView(controller: _tabController, children: [
                // Center(child: Text("vegetables")),
                GridView.count(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  crossAxisCount: 2,
                  childAspectRatio: 40 / 60,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  children: const [
                    Product(
                        imageString: "assets/images/carrot.jpg",
                        name: "Carrot",
                        price: "500"),
                    Product(
                        imageString: "assets/images/tomato.jpg",
                        name: "Tomato",
                        price: "200"),
                    Product(
                        imageString: "assets/images/cabbage.jpg",
                        name: "Cabbage",
                        price: "400"),
                    Product(
                        imageString: "assets/images/epp_plant.jpg",
                        name: "Egg plant",
                        price: "50"),
                    Product(
                        imageString: "assets/images/broccoli.jpg",
                        name: "Broccoli",
                        price: "350"),
                    Product(
                        imageString: "assets/images/cuccumber.jpg",
                        name: "Cuccumber",
                        price: "600"),
                  ],
                ),
                const Center(child: Text("Fruits")),
                const Center(child: Text("Drinks")),
                const Center(child: Text("Dairy")),
                const Center(child: Text("Food")),
                const Center(child: Text("Cakes")),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
