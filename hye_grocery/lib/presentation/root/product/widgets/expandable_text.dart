import 'package:flutter/material.dart';
import 'package:hye_grocery/presentation/core/theme/colors.dart';

class ExpandableText extends StatefulWidget {
  const ExpandableText({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool showMore = false;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      showMore
          ? Text(
              widget.text,
            )
          : Text(
              widget.text,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
      GestureDetector(
        onTap: () {
          setState(() {
            showMore = !showMore;
          });
        },
        child: Row(
          children: [
            Text(showMore ? "show less" : "show more",
                style: TextStyle(color: HColors.primaryColor)),
            Icon(
              showMore
                  ? Icons.keyboard_arrow_up_rounded
                  : Icons.keyboard_arrow_down_rounded,
              color: HColors.primaryColor,
            )
          ],
        ),
      )
    ]);
  }
}
