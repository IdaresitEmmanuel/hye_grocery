import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hye_grocery/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:hye_grocery/presentation/core/theme/colors.dart';
import 'package:hye_grocery/presentation/core/widgets/safe_fold.dart';
import 'package:hye_grocery/presentation/onboarding/widgets/hform_field.dart';
import 'package:hye_grocery/presentation/onboarding/widgets/round_button.dart';
import 'package:hye_grocery/presentation/route/routes.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SafeFold(
        body: ListView(
          shrinkWrap: true,
          reverse: true,
          children: [
            const SizedBox(height: 40.0),
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
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: const [
                  Expanded(child: Divider()),
                  SizedBox(width: 10.0),
                  Text("Or sign up using"),
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
                    onPressed: () {},
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
                const Text("Already have an account?"),
                GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      Navigator.pushReplacementNamed(context, Routes.signIn);
                    },
                    child: Text("Sign In",
                        style: TextStyle(color: HColors.primaryColor)))
              ],
            )
          ].reversed.toList(),
        ),
      ),
    );
  }
}

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const HFormField(
          hintText: "Username",
          icon: Icons.person_rounded,
        ),
        const HFormField(
          hintText: "Email",
          icon: Icons.email_rounded,
        ),
        const HFormField(
          hintText: "Phone",
          icon: Icons.phone_android_rounded,
        ),
        const HFormField(
          hintText: "Password",
          icon: Icons.lock_rounded,
          obscureText: true,
        ),
        const HFormField(
          hintText: "Confirm password",
          icon: Icons.lock_rounded,
          obscureText: true,
        ),
        Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: RoundButton(
                text: "Sign Up",
                onTap: () {
                  context.read<SignInFormBloc>().add(const SignInFormEvent
                      .registerWithEmailAndPasswordPressed());
                })),
      ],
    ));
  }
}
