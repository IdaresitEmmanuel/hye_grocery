import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hye_grocery/application/auth/auth_bloc/auth_bloc.dart';
import 'package:hye_grocery/presentation/route/router.gr.dart';
// import 'package:restart_app/restart_app.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.map(
              initial: (_) {},
              authenticated: (_) {
                debugPrint("Authentication status: authenticated!!");
              },
              unauthenticated: (_) {
                debugPrint("Authentication status: unauthenticated");
                AutoRouter.of(context).replaceAll([const SignIn()]);
              });
        },
        child: Center(
            child: ElevatedButton(
                onPressed: () {
                  context.read<AuthBloc>().add(const AuthEvent.signOut());
                },
                child: const Text("Sign out"))),
      ),
    );
  }
}
