import 'package:flutter/material.dart';
import 'package:hye_grocery/presentation/core/theme/colors.dart';

class SearchProduct extends StatefulWidget {
  const SearchProduct({Key? key}) : super(key: key);

  @override
  State<SearchProduct> createState() => _SearchProductState();
}

class _SearchProductState extends State<SearchProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      width: double.infinity,
      height: 40.0,
      decoration: BoxDecoration(
        color: const Color(0xFFF6F4F4),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/icons/search.png",
            width: 24.0,
          ),
          const SizedBox(
            width: 20.0,
          ),
          Expanded(
              child: TextField(
            decoration: InputDecoration(
                isDense: true,
                isCollapsed: true,
                border: InputBorder.none,
                hintText: "What would you like to buy?",
                hintStyle: TextStyle(color: HColors.captionColor)),
          ))
        ],
      ),
    );
  }
}
