import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hye_grocery/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:hye_grocery/injection.dart';
import 'package:hye_grocery/presentation/core/theme/theme.dart';
import 'package:hye_grocery/presentation/route/route_generator.dart';
import 'package:hye_grocery/presentation/route/routes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<SignInFormBloc>(),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.gettingStarted,
          onGenerateRoute: RouteGenerator.generateRoute,
          title: 'Hye Grocery app',
          theme: HThemeData.lightTheme,
        ));
  }
}
