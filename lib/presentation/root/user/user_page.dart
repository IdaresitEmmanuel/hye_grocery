import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hye_grocery/application/user/user_bloc.dart';
import 'package:hye_grocery/domain/user/user.dart';
import 'package:hye_grocery/presentation/core/theme/colors.dart';
import 'package:hye_grocery/presentation/core/widgets/circle_image.dart';
import 'package:hye_grocery/presentation/root/user/widgets/log_out_dialog.dart';
import 'package:hye_grocery/presentation/root/user/widgets/profile_list_tile.dart';
import 'package:hye_grocery/presentation/route/router.gr.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
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
          BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              if (state.user == null) {
                return const SizedBox.shrink();
              }
              return UserShowCase(user: state.user!);
            },
          ),
          ProfileListTile(
              icon: Icon(
                Icons.edit_rounded,
                color: HColors.iconColor,
                size: 20,
              ),
              title: "Edit Profile",
              onTap: () =>
                  AutoRouter.of(context).push(const EditProfileRoute())),
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
                Icons.attach_money,
                color: HColors.iconColor,
                size: 24,
              ),
              title: "Payment method",
              onTap: () => AutoRouter.of(context).push(const PaymentMethod())),
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
  const UserShowCase({Key? key, required this.user}) : super(key: key);
  final MyUser user;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0, bottom: 20.0),
      child: Column(
        children: [
          Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              child: Hero(
                  tag: "edit_image",
                  child: CircleImage(
                      image: user.photoUrl == null ||
                              user.photoUrl!.trim().isEmpty
                          ? Image.asset("assets/images/default_user_image.png")
                              .image
                          : Image.network(user.photoUrl!).image))),
          Text(user.userName.getOrCrash(),
              style: Theme.of(context).primaryTextTheme.bodyLarge),
          Text(user.emailAddress.getOrCrash(),
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodySmall!
                  .copyWith(color: HColors.captionColor)),
        ],
      ),
    );
  }
}
