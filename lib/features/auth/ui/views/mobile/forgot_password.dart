import 'package:flutter/material.dart';
import 'package:shopping/core/helpers/extensions.dart';
import 'package:shopping/core/helpers/spacing.dart';
import 'package:shopping/core/routing/routes.dart';
import 'package:shopping/core/widgets/custom_back_arrow.dart';
import 'package:shopping/core/widgets/custom_elevated_button.dart';
import 'package:shopping/features/auth/ui/widgets/forgot_password_form.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: CustomBackArrow()),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(62.0),
              Text(
                'Reset Password',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              verticalSpace(18.0),
              Text(
                'Masukan Email/ No. Hp akun untuk mereset kata sandi Anda ',
                style: Theme.of(context).textTheme.labelSmall,
              ),
              verticalSpace(72.0),
              ForgotPasswordForm(),
              verticalSpace(52.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 64.0),
                child: CustomElevatedButton(
                  text: "Reset",
                  onPressed: () => context.pushNamed(Routes.verification),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
