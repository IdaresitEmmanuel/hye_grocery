import 'package:auto_route/auto_route.dart';
import 'package:hye_grocery/presentation/core/splash_page.dart';
import 'package:hye_grocery/presentation/onboarding/getting_started.dart';
import 'package:hye_grocery/presentation/onboarding/sign_in.dart';
import 'package:hye_grocery/presentation/onboarding/sign_up.dart';
import 'package:hye_grocery/presentation/root/cart/pages/shopping_cart.dart';
import 'package:hye_grocery/presentation/root/payment/pages/add_cart.dart';
import 'package:hye_grocery/presentation/root/payment/pages/make_payment.dart';
import 'package:hye_grocery/presentation/root/payment/pages/payment_method.dart';
import 'package:hye_grocery/presentation/root/product/pages/product_detail_page.dart';
import 'package:hye_grocery/presentation/root/root_page.dart';
import 'package:hye_grocery/presentation/root/user/pages/edit_profile_page.dart';

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
    AutoRoute(page: EditProfilePage),
    AutoRoute(page: ProductDetailPage),
    AutoRoute(page: ShoppingCart),
    AutoRoute(page: PaymentMethod),
    AutoRoute(page: MakePayment),
    AutoRoute(page: AddCard),
  ],
)
class $AppRouter {}
