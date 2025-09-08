import 'package:flutter/material.dart';
import 'package:shopping/core/helpers/extensions.dart';
import 'package:shopping/core/routing/routes.dart';
import 'package:shopping/core/widgets/custom_elevated_button.dart';

class CompleteProfileBlocListener extends StatelessWidget {
  const CompleteProfileBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      text: "Confirmation",
      onPressed:
          () => context.pushNamedAndRemoveUntil(
            Routes.layout,
            predicate: (route) => false,
          ),
    );
  }
}
