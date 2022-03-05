import 'package:flutter/material.dart';
import 'package:hye_grocery/presentation/core/theme/dimensions.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key, required this.currentIndexNotifier})
      : super(key: key);
  final ValueNotifier<int> currentIndexNotifier;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: currentIndexNotifier,
        builder: (context, int index, Widget? child) {
          return BottomNavigationBar(
              onTap: (index) => currentIndexNotifier.value = index,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              currentIndex: index,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/images/home_outlined.png",
                    width: HDimensions.iconSize,
                  ),
                  label: "home",
                  activeIcon: Image.asset(
                    "assets/images/home_filled.png",
                    width: HDimensions.iconSize,
                  ),
                ),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      "assets/images/order_outlined.png",
                      width: HDimensions.iconSize,
                      height: HDimensions.iconSize,
                    ),
                    activeIcon: Image.asset(
                      "assets/images/order_filled.png",
                      width: HDimensions.iconSize,
                      height: HDimensions.iconSize,
                    ),
                    label: "order"),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/images/cart_outlined.png",
                    width: HDimensions.iconSize,
                  ),
                  label: "cart",
                  activeIcon: Image.asset(
                    "assets/images/cart_filled.png",
                    width: HDimensions.iconSize,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/images/notification_outlined.png",
                    width: HDimensions.iconSize,
                  ),
                  label: "notification",
                  activeIcon: Image.asset(
                    "assets/images/notification_filled.png",
                    width: HDimensions.iconSize,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/images/user_outlined.png",
                    width: HDimensions.iconSize,
                  ),
                  label: "user",
                  activeIcon: Image.asset(
                    "assets/images/user_filled.png",
                    width: HDimensions.iconSize,
                  ),
                ),
              ]);
        });
  }
}
