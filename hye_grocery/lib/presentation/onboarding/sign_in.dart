import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hye_grocery/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:hye_grocery/presentation/core/theme/colors.dart';
import 'package:hye_grocery/presentation/core/widgets/safe_fold.dart';
import 'package:hye_grocery/presentation/onboarding/widgets/hform_field.dart';
import 'package:hye_grocery/presentation/onboarding/widgets/round_button.dart';
import 'package:hye_grocery/presentation/route/router.gr.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  void initState() {
    super.initState();
    context.read<SignInFormBloc>().add(const SignInFormEvent.refreshState());
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
                Center(
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: 120.0,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 30.0),
                Text("Welcome back",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .primaryTextTheme
                        .bodyLarge!
                        .copyWith(fontWeight: FontWeight.w600)),
                const SizedBox(height: 5.0),
                Text("Log in to your existing account",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .primaryTextTheme
                        .bodyMedium!
                        .copyWith(fontWeight: FontWeight.w400)),
                const SizedBox(height: 30.0),
                const SignInForm(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: const [
                      Expanded(child: Divider()),
                      SizedBox(width: 10.0),
                      Text("Or sign in using"),
                      SizedBox(width: 10.0),
                      Expanded(child: Divider()),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/images/facebook_logo.png",
                          width: 24.0,
                          height: 24.0,
                        ),
                        label: const Text("Facebook"),
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF43609C),
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      ElevatedButton.icon(
                        onPressed: () {
                          context.read<SignInFormBloc>().add(
                              const SignInFormEvent.signInWithGooglePressed());
                        },
                        icon: Image.asset(
                          "assets/images/google_logo.png",
                          width: 20.0,
                        ),
                        label: const Text("Google"),
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFFDD4B39),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    GestureDetector(
                        onTap: () {
                          AutoRouter.of(context).replace(const SignUp());
                        },
                        child: Text("Sign up",
                            style: TextStyle(color: HColors.primaryColor)))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccess.fold(
            () => null,
            (either) => either.fold((failure) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("sign in unsuccessful!")));
                }, (r) => null));
      },
      builder: (context, state) {
        return Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: Column(
              children: [
                HFormField(
                  hintText: "Email",
                  icon: Icons.email_rounded,
                  onChanged: (value) => context
                      .read<SignInFormBloc>()
                      .add(SignInFormEvent.emailChanged(value)),
                  validator: (_) => context
                      .read<SignInFormBloc>()
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
                  hintText: "Password",
                  icon: Icons.lock_rounded,
                  obscureText: true,
                  onChanged: (value) => context
                      .read<SignInFormBloc>()
                      .add(SignInFormEvent.passwordChanged(value)),
                  validator: (_) =>
                      context.read<SignInFormBloc>().state.password.value.fold(
                            (f) => f.maybeMap(
                                shortPassword: (_) => 'Short Password',
                                orElse: () => null),
                            (_) => null,
                          ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  alignment: Alignment.centerRight,
                  child: const Text(
                    "Forgot you password?",
                    textAlign: TextAlign.end,
                  ),
                ),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: RoundButton(
                        text: "Sign In",
                        onTap: () {
                          context.read<SignInFormBloc>().add(
                              const SignInFormEvent
                                  .signInWithEmailAndPasswordPressed());
                        })),
              ],
            ));
      },
    );
  }
}
