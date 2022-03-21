import 'package:flutter/material.dart';
import 'package:hye_grocery/presentation/core/theme/dimensions.dart';

class DismissibleWidget extends StatelessWidget {
  const DismissibleWidget(
      {Key? key, required this.id, required this.child, this.onDismissed})
      : super(key: key);
  final String id;
  final Widget child;
  final void Function(DismissDirection)? onDismissed;
  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.symmetric(
            horizontal: HDimensions.pageMargin, vertical: 5.0),
        child: Dismissible(
          key: ObjectKey(id),
          child: child,
          background: buildSwipeLeft(),
          secondaryBackground: buildSwipeRight(),
          onDismissed: onDismissed,
        ),
      );
  Widget buildSwipeLeft() => Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(6)),
        alignment: Alignment.centerLeft,
        child: Image.asset("assets/icons/delete_filled_white.png", width: 30.0),
      );
  Widget buildSwipeRight() => Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(6)),
        alignment: Alignment.centerRight,
        child: Image.asset("assets/icons/delete_filled_white.png", width: 30.0),
      );
}
