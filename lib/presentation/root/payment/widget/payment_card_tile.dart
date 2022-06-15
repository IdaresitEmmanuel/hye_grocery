import 'package:flutter/material.dart';
import 'package:hye_grocery/presentation/core/theme/colors.dart';
import 'package:hye_grocery/presentation/core/theme/dimensions.dart';

class PaymentCardTile extends StatelessWidget {
  const PaymentCardTile({
    Key? key,
    this.assetImage,
    this.cardNo,
    required this.groupValue,
    required this.value,
    this.showRadio = true,
    this.onChanged,
  }) : super(key: key);
  final String? assetImage;
  final String? cardNo;
  final String groupValue;
  final String value;
  final bool showRadio;
  final void Function(String?)? onChanged;
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
          assetImage != null
              ? Image.asset(
                  assetImage ?? "",
                  width: 60.0,
                )
              : const SizedBox.shrink(),
          Text(cardNo ?? "",
              style:
                  const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
          showRadio
              ? Radio(
                  // activeColor: HColors.primaryColor,
                  value: value,
                  groupValue: groupValue,
                  onChanged: onChanged)
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
