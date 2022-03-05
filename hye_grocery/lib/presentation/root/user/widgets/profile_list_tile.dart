import 'package:flutter/material.dart';
import 'package:hye_grocery/presentation/core/theme/colors.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile(
      {Key? key, required this.icon, required this.title, required this.onTap})
      : super(key: key);
  final Widget icon;
  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      child: ListTile(
        onTap: onTap,
        leading: Container(
          width: 40.0,
          height: 40.0,
          decoration: BoxDecoration(
              color: HColors.cardColor, borderRadius: BorderRadius.circular(8)),
          child: icon,
        ),
        title: Text(title,
            style: Theme.of(context)
                .primaryTextTheme
                .bodySmall!
                .copyWith(color: Colors.black)),
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: HColors.iconColor,
          size: 20,
        ),
      ),
    );
  }
}
