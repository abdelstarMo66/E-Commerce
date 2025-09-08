import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping/core/helpers/spacing.dart';
import 'package:shopping/core/widgets/custom_back_arrow.dart';
import 'package:shopping/features/auth/ui/forgot_password/widgets/verification_bloc_listener.dart';
import 'package:shopping/features/auth/ui/forgot_password/widgets/verification_form.dart';
import 'package:shopping/features/auth/ui/forgot_password/widgets/verification_header.dart';

class VerificationMobileScreen extends StatelessWidget {
  const VerificationMobileScreen({super.key});

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
              VerificationHeader(),
              verticalSpace(72.0),
              VerificationForm(),
              verticalSpace(42.0),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 72.0.w),
                child: VerificationBlocListener(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
