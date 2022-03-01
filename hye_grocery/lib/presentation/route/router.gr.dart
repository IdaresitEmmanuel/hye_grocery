// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../onboarding/getting_started.dart' as _i1;
import '../onboarding/sign_in.dart' as _i2;
import '../onboarding/sign_up.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    GettingStarted.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.GettingStarted());
    },
    SignIn.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignIn());
    },
    SignUp.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignUp());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(GettingStarted.name, path: '/'),
        _i4.RouteConfig(SignIn.name, path: '/sign-in'),
        _i4.RouteConfig(SignUp.name, path: '/sign-up')
      ];
}

/// generated route for
/// [_i1.GettingStarted]
class GettingStarted extends _i4.PageRouteInfo<void> {
  const GettingStarted() : super(GettingStarted.name, path: '/');

  static const String name = 'GettingStarted';
}

/// generated route for
/// [_i2.SignIn]
class SignIn extends _i4.PageRouteInfo<void> {
  const SignIn() : super(SignIn.name, path: '/sign-in');

  static const String name = 'SignIn';
}

/// generated route for
/// [_i3.SignUp]
class SignUp extends _i4.PageRouteInfo<void> {
  const SignUp() : super(SignUp.name, path: '/sign-up');

  static const String name = 'SignUp';
}
