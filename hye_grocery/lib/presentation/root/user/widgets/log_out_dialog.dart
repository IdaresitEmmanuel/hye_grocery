import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hye_grocery/application/auth/auth_bloc/auth_bloc.dart';
import 'package:hye_grocery/presentation/core/theme/colors.dart';
import 'package:hye_grocery/presentation/route/router.gr.dart';

class LogOutDialog extends StatelessWidget {
  const LogOutDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
      state.maybeMap(
        unauthenticated: ((value) =>
            AutoRouter.of(context).replaceAll([const SignIn()])),
        orElse: () {},
      );
    }, builder: (context, state) {
      return SimpleDialog(
        title: state == const AuthState.loadingAuthenticationStatus()
            ? const Text("Please wait...")
            : const Text("Are you sure you want to logout?"),
        titleTextStyle: Theme.of(context).primaryTextTheme.bodyMedium,
        children: state == const AuthState.loadingAuthenticationStatus()
            ? [
                Center(
                  child: CircularProgressIndicator(
                    color: HColors.primaryColor,
                  ),
                )
              ]
            : [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true).pop();
                        },
                        child: Text(
                          "Cancel",
                          style: Theme.of(context)
                              .primaryTextTheme
                              .bodySmall!
                              .copyWith(color: HColors.accentColor),
                        ),
                        style: ButtonStyle(
                          overlayColor: MaterialStateColor.resolveWith(
                              (states) =>
                                  HColors.primaryColor.withOpacity(0.2)),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          context
                              .read<AuthBloc>()
                              .add(const AuthEvent.signOut());
                        },
                        child: Text("Yes",
                            style: Theme.of(context)
                                .primaryTextTheme
                                .bodySmall!
                                .copyWith(color: HColors.accentColor)),
                        style: ButtonStyle(
                          overlayColor: MaterialStateColor.resolveWith(
                              (states) =>
                                  HColors.primaryColor.withOpacity(0.2)),
                        ),
                      ),
                    ],
                  ),
                )
              ],
      );
    });
  }
}
