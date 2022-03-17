import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hye_grocery/application/auth/auth_bloc/auth_bloc.dart';
import 'package:hye_grocery/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:hye_grocery/application/user/user_bloc.dart';
import 'package:hye_grocery/presentation/core/theme/colors.dart';
import 'package:hye_grocery/presentation/core/widgets/safe_fold.dart';
import 'package:hye_grocery/presentation/onboarding/widgets/hform_field.dart';
import 'package:hye_grocery/presentation/onboarding/widgets/round_button.dart';
import 'package:hye_grocery/presentation/route/router.gr.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  void initState() {
    super.initState();
    context.read<SignUpFormBloc>().add(const SignUpFormEvent.refreshState());
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SafeFold(
        body: Center(
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Let's get started",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .primaryTextTheme
                        .bodyLarge!
                        .copyWith(fontWeight: FontWeight.w600)),
                const SizedBox(height: 10.0),
                Text("Create a new account",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .primaryTextTheme
                        .bodyMedium!
                        .copyWith(fontWeight: FontWeight.w400)),
                const SizedBox(height: 30.0),
                const SignUpForm(),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?"),
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        AutoRouter.of(context).replace(const SignIn());
                      },
                      child: Text("Sign In",
                          style: TextStyle(color: HColors.primaryColor)),
                    )
                  ],
                )
              ]
              // .reversed.toList()
              ,
            ),
          ),
        ),
      ),
    );
  }
}

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (aContext, aState) {
        aState.map(
            initial: (_) {},
            authenticated: (_) {
              debugPrint("authenticated!!!!!");
              AutoRouter.of(context).replaceAll([const RootRoute()]);
            },
            unauthenticated: (_) {
              debugPrint("unauthenticated!!!!!");
            },
            loadingAuthenticationStatus:
                (LoadingAuthenticationStatus value) {});
      },
      child: BlocListener<UserBloc, UserState>(
        listener: (context, state) {
          state.userFailureOrSuccess.map((either) => either.fold(
              (l) => {},
              (r) => context
                  .read<AuthBloc>()
                  .add(const AuthEvent.requestAuthStatus())));
        },
        child: BlocConsumer<SignUpFormBloc, SignUpFormState>(
          listener: (context, state) {
            context
                .read<SignUpFormBloc>()
                .state
                .authFailureOrSuccess
                .map((a) => a.fold((l) => null, (r) {
                      context.read<UserBloc>().add(UserEvent.createOrUpdateUser(
                          username: state.userName,
                          phoneNumber: state.phoneNumber));
                    }));
          },
          builder: (context, state) {
            return Form(
                autovalidateMode: state.showErrorMessages
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                child: Column(
                  children: [
                    HFormField(
                        hintText: "Username",
                        icon: Icons.person_rounded,
                        onChanged: (value) {
                          context
                              .read<SignUpFormBloc>()
                              .add(SignUpFormEvent.userNameChanged(value));
                        },
                        validator: (string) {
                          return context
                              .read<SignUpFormBloc>()
                              .state
                              .userName
                              .value
                              .fold(
                                  (f) => f.maybeMap(
                                      emptyUserName: (_) =>
                                          'This field cannot be empty',
                                      orElse: () => null),
                                  (r) => null);
                        }),
                    HFormField(
                      hintText: "Email",
                      icon: Icons.email_rounded,
                      onChanged: (value) {
                        context
                            .read<SignUpFormBloc>()
                            .add(SignUpFormEvent.emailChanged(value));
                      },
                      validator: (_) => context
                          .read<SignUpFormBloc>()
                          .state
                          .emailAddress
                          .value
                          .fold(
                            (f) => f.maybeMap(
                                invalidEmail: (_) => 'Invalid Email',
                                orElse: () => null),
                            (_) => null,
                          ),
                    ),
                    HFormField(
                      hintText: "Phone (Optional)",
                      icon: Icons.phone_android_rounded,
                      onChanged: (value) {
                        context
                            .read<SignUpFormBloc>()
                            .add(SignUpFormEvent.phoneNumberChanged(value));
                      },
                      validator: (value) => context
                          .read<SignUpFormBloc>()
                          .state
                          .phoneNumber
                          .value
                          .fold(
                              (f) => f.maybeMap(
                                  invalidPhoneNumber: (_) =>
                                      'Invalid phone number',
                                  orElse: () => null),
                              (r) => null),
                    ),
                    HFormField(
                      hintText: "Password",
                      icon: Icons.lock_rounded,
                      obscureText: true,
                      onChanged: (value) => context
                          .read<SignUpFormBloc>()
                          .add(SignUpFormEvent.passwordChanged(value)),
                      validator: (_) => context
                          .read<SignUpFormBloc>()
                          .state
                          .password
                          .value
                          .fold(
                            (f) => f.maybeMap(
                                shortPassword: (_) => 'Short Password',
                                orElse: () => null),
                            (_) => null,
                          ),
                    ),
                    HFormField(
                      hintText: "Confirm password",
                      icon: Icons.lock_rounded,
                      obscureText: true,
                      onChanged: (value) => context
                          .read<SignUpFormBloc>()
                          .add(SignUpFormEvent.confirmPasswordChanged(value)),
                      validator: (_) => context
                          .read<SignUpFormBloc>()
                          .state
                          .confirmPassword
                          .value
                          .fold(
                            (f) => f.maybeMap(
                                passwordMisMatch: (_) =>
                                    'Password does not match',
                                orElse: () => null),
                            (_) => null,
                          ),
                    ),
                    Container(
                        margin: const EdgeInsets.symmetric(vertical: 20.0),
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: RoundButton(
                            text: "Sign Up",
                            onTap: () {
                              context.read<SignUpFormBloc>().add(
                                  const SignUpFormEvent.registerUserPressed());
                            })),
                  ],
                ));
          },
        ),
      ),
    );
  }
}
