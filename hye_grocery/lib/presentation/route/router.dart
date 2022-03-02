import 'package:auto_route/auto_route.dart';
import 'package:hye_grocery/presentation/core/splash_page.dart';
import 'package:hye_grocery/presentation/onboarding/getting_started.dart';
import 'package:hye_grocery/presentation/onboarding/sign_in.dart';
import 'package:hye_grocery/presentation/onboarding/sign_up.dart';
import 'package:hye_grocery/presentation/root/root_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    // onboarding
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: GettingStarted),
    AutoRoute(page: SignIn),
    AutoRoute(page: SignUp),

    //
    AutoRoute(page: RootPage),
  ],
)
class $AppRouter {}
