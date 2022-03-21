// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;

import '../../domain/product/product.dart' as _i14;
import '../core/splash_page.dart' as _i1;
import '../onboarding/getting_started.dart' as _i2;
import '../onboarding/sign_in.dart' as _i3;
import '../onboarding/sign_up.dart' as _i4;
import '../root/cart/pages/shopping_cart.dart' as _i8;
import '../root/payment/pages/add_cart.dart' as _i11;
import '../root/payment/pages/make_payment.dart' as _i10;
import '../root/payment/pages/payment_method.dart' as _i9;
import '../root/product/pages/product_detail_page.dart' as _i7;
import '../root/root_page.dart' as _i5;
import '../root/user/pages/edit_profile_page.dart' as _i6;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    GettingStarted.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.GettingStarted());
    },
    SignIn.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignIn());
    },
    SignUp.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SignUp());
    },
    RootRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.RootPage());
    },
    EditProfileRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.EditProfilePage());
    },
    ProductDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.ProductDetailPage(key: args.key, product: args.product));
    },
    ShoppingCart.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ShoppingCart());
    },
    PaymentMethod.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.PaymentMethod());
    },
    MakePayment.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.MakePayment());
    },
    AddCard.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.AddCard());
    }
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(SplashRoute.name, path: '/'),
        _i12.RouteConfig(GettingStarted.name, path: '/getting-started'),
        _i12.RouteConfig(SignIn.name, path: '/sign-in'),
        _i12.RouteConfig(SignUp.name, path: '/sign-up'),
        _i12.RouteConfig(RootRoute.name, path: '/root-page'),
        _i12.RouteConfig(EditProfileRoute.name, path: '/edit-profile-page'),
        _i12.RouteConfig(ProductDetailRoute.name, path: '/product-detail-page'),
        _i12.RouteConfig(ShoppingCart.name, path: '/shopping-cart'),
        _i12.RouteConfig(PaymentMethod.name, path: '/payment-method'),
        _i12.RouteConfig(MakePayment.name, path: '/make-payment'),
        _i12.RouteConfig(AddCard.name, path: '/add-card')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i12.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.GettingStarted]
class GettingStarted extends _i12.PageRouteInfo<void> {
  const GettingStarted() : super(GettingStarted.name, path: '/getting-started');

  static const String name = 'GettingStarted';
}

/// generated route for
/// [_i3.SignIn]
class SignIn extends _i12.PageRouteInfo<void> {
  const SignIn() : super(SignIn.name, path: '/sign-in');

  static const String name = 'SignIn';
}

/// generated route for
/// [_i4.SignUp]
class SignUp extends _i12.PageRouteInfo<void> {
  const SignUp() : super(SignUp.name, path: '/sign-up');

  static const String name = 'SignUp';
}

/// generated route for
/// [_i5.RootPage]
class RootRoute extends _i12.PageRouteInfo<void> {
  const RootRoute() : super(RootRoute.name, path: '/root-page');

  static const String name = 'RootRoute';
}

/// generated route for
/// [_i6.EditProfilePage]
class EditProfileRoute extends _i12.PageRouteInfo<void> {
  const EditProfileRoute()
      : super(EditProfileRoute.name, path: '/edit-profile-page');

  static const String name = 'EditProfileRoute';
}

/// generated route for
/// [_i7.ProductDetailPage]
class ProductDetailRoute extends _i12.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({_i13.Key? key, required _i14.Product product})
      : super(ProductDetailRoute.name,
            path: '/product-detail-page',
            args: ProductDetailRouteArgs(key: key, product: product));

  static const String name = 'ProductDetailRoute';
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({this.key, required this.product});

  final _i13.Key? key;

  final _i14.Product product;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i8.ShoppingCart]
class ShoppingCart extends _i12.PageRouteInfo<void> {
  const ShoppingCart() : super(ShoppingCart.name, path: '/shopping-cart');

  static const String name = 'ShoppingCart';
}

/// generated route for
/// [_i9.PaymentMethod]
class PaymentMethod extends _i12.PageRouteInfo<void> {
  const PaymentMethod() : super(PaymentMethod.name, path: '/payment-method');

  static const String name = 'PaymentMethod';
}

/// generated route for
/// [_i10.MakePayment]
class MakePayment extends _i12.PageRouteInfo<void> {
  const MakePayment() : super(MakePayment.name, path: '/make-payment');

  static const String name = 'MakePayment';
}

/// generated route for
/// [_i11.AddCard]
class AddCard extends _i12.PageRouteInfo<void> {
  const AddCard() : super(AddCard.name, path: '/add-card');

  static const String name = 'AddCard';
}
