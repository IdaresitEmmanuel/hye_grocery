import 'package:flutter/material.dart';
import 'package:hye_grocery/presentation/core/theme/colors.dart';

class CircleTabDecoration extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter();
  }
}

class _CirclePainter extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final paint = Paint()..color = HColors.primaryColor;
    final circleOffset = Offset(
        configuration.size!.width / 2 - 2, configuration.size!.height - 8);
    canvas.drawCircle(offset + circleOffset, 4.0, paint);
  }
}
