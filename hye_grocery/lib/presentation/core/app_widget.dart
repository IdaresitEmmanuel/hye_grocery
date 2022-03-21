import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hye_grocery/application/auth/auth_bloc/auth_bloc.dart';
import 'package:hye_grocery/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:hye_grocery/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:hye_grocery/application/cart/cart_bloc.dart';
import 'package:hye_grocery/application/product/product_bloc.dart';
import 'package:hye_grocery/application/profile/profile_bloc.dart';
import 'package:hye_grocery/application/user/user_bloc.dart';
import 'package:hye_grocery/injection.dart';
import 'package:hye_grocery/presentation/core/theme/theme.dart';
import 'package:hye_grocery/presentation/route/router.gr.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  getIt<AuthBloc>()..add(const AuthEvent.requestAuthStatus())),
          BlocProvider(create: (context) => getIt<SignInFormBloc>()),
          BlocProvider(create: (context) => getIt<SignUpFormBloc>()),
          BlocProvider(
            create: (context) =>
                getIt<UserBloc>()..add(const UserEvent.getCurrentUser()),
          ),
          BlocProvider(create: (context) => getIt<ProductBloc>()),
          BlocProvider(create: (context) => getIt<ProfileBloc>()),
          BlocProvider(create: (context) => getIt<CartBloc>())
        ],
        child: MaterialApp.router(
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          debugShowCheckedModeBanner: false,
          title: 'Hye Grocery app',
          theme: HThemeData.lightTheme,
        ));
  }
}
