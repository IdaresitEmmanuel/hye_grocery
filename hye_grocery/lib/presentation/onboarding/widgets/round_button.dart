import "package:flutter/material.dart";
import 'package:hye_grocery/presentation/core/theme/colors.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    Key? key,
    required this.text,
    this.buttonColor,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final Color? buttonColor;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
          padding: const EdgeInsets.all(10.0),
          primary: buttonColor ?? HColors.primaryColor,
          minimumSize: const Size(double.infinity, 40.0)),
      child: Text(text,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.w600)),
    );
  }
}
