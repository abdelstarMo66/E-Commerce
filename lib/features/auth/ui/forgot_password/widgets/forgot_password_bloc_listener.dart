import 'package:flutter/material.dart';
import 'package:shopping/core/helpers/extensions.dart';
import 'package:shopping/core/routing/routes.dart';
import 'package:shopping/core/widgets/custom_elevated_button.dart';

class ForgotPasswordBlocListener extends StatelessWidget {
  const ForgotPasswordBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      text: "Reset",
      onPressed: () => context.pushNamed(Routes.verification),
    );
  }
}
