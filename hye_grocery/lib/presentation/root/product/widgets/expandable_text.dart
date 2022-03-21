import 'package:flutter/material.dart';
import 'package:hye_grocery/presentation/core/theme/colors.dart';

class ExpandableText extends StatefulWidget {
  const ExpandableText({Key? key, this.text}) : super(key: key);
  final String? text;
  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool showMore = false;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      showMore
          ? const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus "
              "pharetra tincidunt posuere. Curabitur id maximus risus. Nam tempus"
              "nec lorem pulvinar pretium. Lorem ipsum dolor sit amet, consectet"
              "ur adipiscing elit. Praesent gravida sed mauris ac mollis. More"
              " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus "
              "pharetra tincidunt posuere. Curabitur id maximus risus. Nam tempus"
              "nec lorem pulvinar pretium. Lorem ipsum dolor sit amet, consectet"
              "ur adipiscing elit. Praesent gravida sed mauris ac mollis. More",
            )
          : const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus "
              "pharetra tincidunt posuere. Curabitur id maximus risus. Nam tempus"
              "nec lorem pulvinar pretium. Lorem ipsum dolor sit amet, consectet"
              "ur adipiscing elit. Praesent gravida sed mauris ac mollis. More"
              " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus "
              "pharetra tincidunt posuere. Curabitur id maximus risus. Nam tempus"
              "nec lorem pulvinar pretium. Lorem ipsum dolor sit amet, consectet"
              "ur adipiscing elit. Praesent gravida sed mauris ac mollis. More",
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
