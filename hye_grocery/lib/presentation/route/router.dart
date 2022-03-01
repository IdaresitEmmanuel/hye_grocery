import 'package:auto_route/auto_route.dart';
import 'package:hye_grocery/presentation/onboarding/getting_started.dart';
import 'package:hye_grocery/presentation/onboarding/sign_in.dart';
import 'package:hye_grocery/presentation/onboarding/sign_up.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: GettingStarted, initial: true),
    AutoRoute(page: SignIn),
    AutoRoute(page: SignUp),
  ],
)
class $AppRouter {}
