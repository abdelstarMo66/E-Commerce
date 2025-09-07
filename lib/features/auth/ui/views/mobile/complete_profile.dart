import 'package:flutter/material.dart';
import 'package:shopping/core/helpers/extensions.dart';
import 'package:shopping/core/helpers/spacing.dart';
import 'package:shopping/core/routing/routes.dart';
import 'package:shopping/core/widgets/custom_elevated_button.dart';
import 'package:shopping/features/auth/ui/widgets/complete_profile_form.dart';

class CompleteProfile extends StatelessWidget {
  const CompleteProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      extendBodyBehindAppBar: true,
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 32.0),
        child: CustomElevatedButton(
          text: "Confirmation",
          onPressed:
              () => context.pushNamedAndRemoveUntil(
                Routes.layout,
                predicate: (route) => false,
              ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(62.0),
                Text(
                  'Profile & Password',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                verticalSpace(18.0),
                Text(
                  'Lengkapi data terakhir berikut untuk masuk ke aplikasi Mega Mall',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                verticalSpace(72.0),
                CompleteProfileForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
