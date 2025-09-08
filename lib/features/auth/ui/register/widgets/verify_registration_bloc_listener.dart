import 'package:flutter/material.dart';
import 'package:shopping/core/helpers/extensions.dart';
import 'package:shopping/core/routing/routes.dart';
import 'package:shopping/core/widgets/custom_elevated_button.dart';

class VerifyRegistrationBlocListener extends StatelessWidget {
  const VerifyRegistrationBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      text: "Continue",
      onPressed:
          () => context.pushNamedAndRemoveUntil(
            Routes.completeProfile,
            predicate: (route) => false,
          ),
    );
  }
}
