import 'package:flutter/material.dart';
import 'package:hye_grocery/presentation/core/theme/colors.dart';
import 'package:hye_grocery/presentation/core/theme/dimensions.dart';

class MakePaymentTile extends StatelessWidget {
  const MakePaymentTile({
    Key? key,
    this.assetImage,
    this.cardNo,
    required this.groupValue,
    required this.value,
    this.imageWidth = 60.0,
    this.leftPush = 0.0,
  }) : super(key: key);
  final String? assetImage;
  final String? cardNo;
  final int groupValue;
  final int value;
  final double imageWidth;
  final double leftPush;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 80.0,
      padding: const EdgeInsets.all(5.0),
      margin: EdgeInsets.symmetric(
          horizontal: HDimensions.pageMargin, vertical: 5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: HColors.dividerColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: imageWidth,
            margin: EdgeInsets.only(left: leftPush),
            child: Image.asset(
              assetImage ?? "",
              // width: imageWidth,
            ),
          ),
          Expanded(
            child: Text(cardNo ?? "",
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 16.0, fontWeight: FontWeight.bold)),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.keyboard_arrow_right_rounded)),
        ],
      ),
    );
  }
}
