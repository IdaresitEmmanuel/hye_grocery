import "package:flutter/material.dart";
import 'package:hye_grocery/presentation/core/theme/colors.dart';

class CircleImage extends StatelessWidget {
  const CircleImage(
      {Key? key, required this.image, this.radius = 50, this.loading = false})
      : super(key: key);
  final ImageProvider<Object> image;
  final double radius;
  final bool loading;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius * 2,
      width: radius * 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        image: DecorationImage(fit: BoxFit.cover, image: image),
      ),
      child: loading
          ? Center(
              child: CircularProgressIndicator(color: HColors.primaryColor))
          : const SizedBox.shrink(),
    );
  }
}
