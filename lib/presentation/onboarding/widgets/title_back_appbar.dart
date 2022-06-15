import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hye_grocery/presentation/core/theme/dimensions.dart';

class TitleAppbar extends StatelessWidget {
  const TitleAppbar({Key? key, this.title, this.showBackButton = true})
      : super(key: key);
  final String? title;
  final bool showBackButton;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: HDimensions.pageMargin,
          right: HDimensions.pageMargin,
          top: HDimensions.pageMargin,
          bottom: 5.0),
      child: Row(
        children: [
          showBackButton
              ? InkResponse(
                  onTap: () => AutoRouter.of(context).pop(),
                  child: const Icon(Icons.arrow_back),
                )
              : const SizedBox.shrink(),
          const SizedBox(width: 10.0),
          Text(title ?? "",
              style: TextStyle(
                  fontSize: HDimensions.bodyTextLarge,
                  fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
