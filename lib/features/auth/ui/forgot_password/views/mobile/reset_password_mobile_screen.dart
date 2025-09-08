import 'package:flutter/material.dart';
import 'package:shopping/core/helpers/spacing.dart';
import 'package:shopping/features/auth/ui/forgot_password/widgets/reset_password_bloc_listener.dart';
import 'package:shopping/features/auth/ui/forgot_password/widgets/reset_password_form.dart';
import 'package:shopping/features/auth/ui/forgot_password/widgets/reset_password_header.dart';

class ResetPasswordMobileScreen extends StatelessWidget {
  const ResetPasswordMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(62.0),
                ResetPasswordHeader(),
                verticalSpace(72.0),
                ResetPasswordForm(),
                verticalSpace(52.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 64.0),
                  child: ResetPasswordBlocListener(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
