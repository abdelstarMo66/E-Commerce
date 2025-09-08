import 'package:flutter/material.dart';
import 'package:shopping/core/helpers/extensions.dart';
import 'package:shopping/core/routing/routes.dart';
import 'package:shopping/core/widgets/custom_elevated_button.dart';

class ResetPasswordBlocListener extends StatelessWidget {
  const ResetPasswordBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      text: "Save Update",
      onPressed:
          () => context.pushNamedAndRemoveUntil(
        Routes.layout,
        predicate: (route) => false,
      ),
    );
  }
}
