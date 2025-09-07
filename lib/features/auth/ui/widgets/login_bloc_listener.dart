import 'package:flutter/material.dart';
import 'package:shopping/core/helpers/extensions.dart';
import 'package:shopping/core/routing/routes.dart';
import 'package:shopping/core/widgets/custom_elevated_button.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      text: "Sign In",
      onPressed:
          () => context.pushNamedAndRemoveUntil(
            Routes.layout,
            predicate: (route) => false,
          ),
    );
  }
}
