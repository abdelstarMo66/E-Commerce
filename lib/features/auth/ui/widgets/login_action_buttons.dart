import 'package:flutter/material.dart';
import 'package:shopping/core/helpers/extensions.dart';
import 'package:shopping/core/routing/routes.dart';
import 'package:shopping/core/theme/color_manager.dart';

class LoginActionButtons extends StatelessWidget {
  const LoginActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () => context.pushNamed(Routes.forgotPassword),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Forgot Password",
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
        ),
        TextButton(
          onPressed: () => context.pushReplacementNamed(Routes.register),
          child: Text(
            "Sign Up",
            style: Theme.of(
              context,
            ).textTheme.labelMedium?.copyWith(color: ColorManager.blueColor),
          ),
        ),
      ],
    );
  }
}
