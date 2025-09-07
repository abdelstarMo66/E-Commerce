import 'package:flutter/material.dart';
import 'package:shopping/core/helpers/extensions.dart';
import 'package:shopping/core/helpers/spacing.dart';
import 'package:shopping/core/routing/routes.dart';
import 'package:shopping/core/theme/color_manager.dart';
import 'package:shopping/core/widgets/custom_elevated_button.dart';
import 'package:shopping/features/auth/ui/widgets/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(62.0),
                Text(
                  'Register Account',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                verticalSpace(18.0),
                Text(
                  'Masukan Email/ No. Hp untuk mendaftar ',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                verticalSpace(72.0),
                RegisterForm(),
                verticalSpace(52.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 64.0),
                  child: CustomElevatedButton(
                    text: "Continue",
                    onPressed:
                        () => context.pushNamed(Routes.verifyRegistration),
                  ),
                ),
                verticalSpace(82.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Have an Account?",
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    TextButton(
                      onPressed:
                          () => context.pushReplacementNamed(Routes.login),
                      child: Text(
                        "Sign In",
                        style: Theme.of(context).textTheme.labelMedium
                            ?.copyWith(color: ColorManager.blueColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
