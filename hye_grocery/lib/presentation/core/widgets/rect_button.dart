import "package:flutter/material.dart";
import 'package:hye_grocery/presentation/core/theme/colors.dart';

class RectButton extends StatelessWidget {
  const RectButton({
    Key? key,
    required this.text,
    this.buttonColor,
    required this.onTap,
    this.width,
  }) : super(key: key);
  final String text;
  final Color? buttonColor;
  final Function() onTap;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.all(10.0),
          primary: buttonColor ?? HColors.primaryColor,
          minimumSize: Size(width ?? double.infinity, 40.0)),
      child: Text(text,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.w600)),
    );
  }
}
