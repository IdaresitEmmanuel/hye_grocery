import "package:flutter/material.dart";

class CircleImage extends StatelessWidget {
  const CircleImage({Key? key, required this.image, this.radius = 50})
      : super(key: key);
  final ImageProvider<Object> image;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: radius * 2,
        width: radius * 2,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          image: DecorationImage(fit: BoxFit.cover, image: image),
        ));
  }
}
