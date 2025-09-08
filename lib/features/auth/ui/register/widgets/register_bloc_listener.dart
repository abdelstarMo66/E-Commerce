import 'package:flutter/material.dart';
import 'package:shopping/core/helpers/extensions.dart';
import 'package:shopping/core/routing/routes.dart';
import 'package:shopping/core/widgets/custom_elevated_button.dart';

class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      text: "Continue",
      onPressed:
          () => context.pushNamed(Routes.verifyRegistration),
    );
  }
}
