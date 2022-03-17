import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hye_grocery/application/product/product_bloc.dart';
import 'package:hye_grocery/application/user/user_bloc.dart';
import 'package:hye_grocery/domain/product/product.dart';
import 'package:hye_grocery/presentation/core/theme/colors.dart';
import 'package:hye_grocery/presentation/core/widgets/safe_fold.dart';
import 'package:hye_grocery/presentation/root/product/widgets/product_model.dart';
import 'package:hye_grocery/presentation/root/product/widgets/search_widget.dart';
import 'package:hye_grocery/presentation/root/product/widgets/tab_bar_circle_indicator.dart';
import 'package:preload_page_view/preload_page_view.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  final PreloadPageController _pageController = PreloadPageController();
  @override
  void initState() {
    context.read<ProductBloc>().add(const ProductEvent.requestProduct());
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
              child: BlocBuilder<UserBloc, UserState>(
                builder: (context, state) {
                  if (state.user == null) {
                    return const SizedBox.shrink();
                  }
                  return ListTile(
                    title: Text(
                        "Hello ${state.user!.userName.value.getOrElse(() => "").split(' ').first}",
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
                              fit: BoxFit.cover,
                              image: state.user!.photoUrl == null ||
                                      state.user!.photoUrl!.trim().isEmpty
                                  ? Image.asset(
                                          "assets/images/default_user_image.png")
                                      .image
                                  : Image.network(state.user!.photoUrl!)
                                      .image)),
                    ),
                  );
                },
              ),
            ),
            const SearchProduct(),
            TabBar(
                onTap: (index) {
                  _pageController.animateToPage(index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease);
                },
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
              child: PreloadPageView(
                  onPageChanged: (index) {
                    _tabController.animateTo(index);
                  },
                  preloadPagesCount: 6,
                  controller: _pageController,
                  children: const [
                    Category(name: "vegetable"),
                    Category(name: "fruit"),
                    Category(name: "drink"),
                    Center(child: Text("Dairy")),
                    Center(child: Text("Food")),
                    Center(child: Text("Cakes")),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}

class Category extends StatefulWidget {
  const Category({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(
            child: CircularProgressIndicator(color: HColors.primaryColor),
          );
        }
        if (state.products.isEmpty) {
          return const Center(
            child: Text("There is no data"),
          );
        }
        List<Product> tempProducts = [];
        for (var element in state.products) {
          if (element.category == widget.name) {
            tempProducts.add(element);
          }
        }

        // tempProducts;
        return GridView.builder(
          cacheExtent: tempProducts.length.toDouble(),
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            crossAxisCount: 2,
            childAspectRatio: 40 / 60,
          ),
          itemCount: tempProducts.length,
          itemBuilder: (context, index) {
            final product = tempProducts[index];
            return ProductModel(
              product: product,
            );
          },
        );
      },
    );
  }
}
