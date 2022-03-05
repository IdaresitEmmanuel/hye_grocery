import 'package:flutter/material.dart';
import 'package:hye_grocery/presentation/core/theme/colors.dart';
import 'package:hye_grocery/presentation/core/widgets/circle_image.dart';
import 'package:hye_grocery/presentation/root/user/widgets/log_out_dialog.dart';
import 'package:hye_grocery/presentation/root/user/widgets/profile_list_tile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        titleTextStyle: Theme.of(context).primaryTextTheme.bodyLarge!.copyWith(
            color: Colors.black.withOpacity(0.7), fontWeight: FontWeight.bold),
      ),
      body: Column(
        children: [
          const UserShowCase(),
          ProfileListTile(
              icon: Icon(
                Icons.edit_rounded,
                color: HColors.iconColor,
                size: 20,
              ),
              title: "Edit Profile",
              onTap: () {}),
          ProfileListTile(
              icon: Icon(
                Icons.my_location,
                color: HColors.iconColor,
                size: 20,
              ),
              title: "My Location",
              onTap: () {}),
          ProfileListTile(
              icon: Icon(
                Icons.edit_rounded,
                color: HColors.iconColor,
                size: 20,
              ),
              title: "Edit Profile",
              onTap: () {}),
          ProfileListTile(
              icon: Icon(
                Icons.edit_rounded,
                color: HColors.iconColor,
                size: 20,
              ),
              title: "Edit Profile",
              onTap: () {}),
          ProfileListTile(
              icon: Icon(
                Icons.logout_rounded,
                color: HColors.iconColor,
                size: 20,
              ),
              title: "Log Out",
              onTap: () {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) => const LogOutDialog());
              }),
        ],
      ),
    );
  }
}

class UserShowCase extends StatelessWidget {
  const UserShowCase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0, bottom: 20.0),
      child: Column(
        children: [
          Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              child: CircleImage(
                  image: Image.asset("assets/images/hyebreed.jpg").image)),
          Text("Emmanuel", style: Theme.of(context).primaryTextTheme.bodyLarge),
          Text("idaresitimmanuel@gmail.com",
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodySmall!
                  .copyWith(color: HColors.captionColor)),
        ],
      ),
    );
  }
}
