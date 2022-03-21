import 'package:flutter/material.dart';
import 'package:hye_grocery/presentation/root/notification/pages/notification_page.dart';
import 'package:hye_grocery/presentation/root/order/pages/order_page.dart';
import 'package:hye_grocery/presentation/root/product/pages/product_page.dart';
import 'package:hye_grocery/presentation/root/user/user_page.dart';
import 'package:hye_grocery/presentation/root/user/widgets/bottom_nav_bar.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  final ValueNotifier<int> currentPageNotifier = ValueNotifier<int>(0);
  List<Widget> pages = const [
    ProductPage(),
    OrderPage(),
    // ShoppingCart(),
    NotificationPage(),
    UserPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          BottomNavBar(currentIndexNotifier: currentPageNotifier),
      body: ValueListenableBuilder(
          valueListenable: currentPageNotifier,
          builder: (context, int index, Widget? child) {
            return IndexedStack(
              index: index,
              children: pages,
            );
          }),
    );
  }
}
