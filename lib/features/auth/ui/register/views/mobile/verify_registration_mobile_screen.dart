import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping/core/helpers/spacing.dart';
import 'package:shopping/core/widgets/custom_back_arrow.dart';
import 'package:shopping/features/auth/ui/register/widgets/verify_registration_bloc_listener.dart';
import 'package:shopping/features/auth/ui/register/widgets/verify_registration_form.dart';
import 'package:shopping/features/auth/ui/register/widgets/verify_registration_header.dart';

class VerifyRegistrationMobileScreen extends StatelessWidget {
  const VerifyRegistrationMobileScreen({super.key});

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
              VerifyRegistrationHeader(),
              verticalSpace(72.0),
              VerifyRegistrationForm(),
              verticalSpace(42.0),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 72.0.w),
                child: VerifyRegistrationBlocListener(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
