import 'package:flutter/material.dart';
import 'package:hye_grocery/presentation/onboarding/getting_started.dart';
import 'package:hye_grocery/presentation/onboarding/sign_in.dart';
import 'package:hye_grocery/presentation/onboarding/sign_up.dart';
import 'package:hye_grocery/presentation/route/routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushedNamed
    // final args = settings.arguments;

    switch (settings.name) {
      case Routes.gettingStarted:
        return MaterialPageRoute(builder: (_) => const GettingStarted());
      case Routes.signIn:
        return MaterialPageRoute(builder: (_) => const SignIn());
      case Routes.signUp:
        return MaterialPageRoute(builder: (_) => const SignUp());
      default:
        return MaterialPageRoute(builder: (_) => const GettingStarted());
    }
  }
}
