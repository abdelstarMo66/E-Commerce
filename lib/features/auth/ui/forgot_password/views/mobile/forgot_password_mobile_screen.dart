import 'package:flutter/material.dart';
import 'package:shopping/core/helpers/spacing.dart';
import 'package:shopping/core/widgets/custom_back_arrow.dart';
import 'package:shopping/features/auth/ui/forgot_password/widgets/forgot_password_bloc_listener.dart';
import 'package:shopping/features/auth/ui/forgot_password/widgets/forgot_password_form.dart';
import 'package:shopping/features/auth/ui/forgot_password/widgets/forgot_password_header.dart';

class ForgotPasswordMobileScreen extends StatelessWidget {
  const ForgotPasswordMobileScreen({super.key});

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
              ForgotPasswordHeader(),
              verticalSpace(72.0),
              ForgotPasswordForm(),
              verticalSpace(52.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 64.0),
                child: ForgotPasswordBlocListener(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
