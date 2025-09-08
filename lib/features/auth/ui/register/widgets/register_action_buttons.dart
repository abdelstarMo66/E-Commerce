import 'package:flutter/material.dart';
import 'package:shopping/core/helpers/extensions.dart';
import 'package:shopping/core/routing/routes.dart';
import 'package:shopping/core/theme/color_manager.dart';

class RegisterActionButtons extends StatelessWidget {
  const RegisterActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Have an Account?",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        TextButton(
          onPressed: () => context.pushReplacementNamed(Routes.login),
          child: Text(
            "Sign In",
            style: Theme.of(
              context,
            ).textTheme.labelMedium?.copyWith(color: ColorManager.blueColor),
          ),
        ),
      ],
    );
  }
}
