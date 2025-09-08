import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping/core/helpers/extensions.dart';
import 'package:shopping/core/helpers/spacing.dart';
import 'package:shopping/core/widgets/custom_back_arrow.dart';
import 'package:shopping/features/auth/ui/forgot_password/widgets/verification_bloc_listener.dart';
import 'package:shopping/features/auth/ui/forgot_password/widgets/verification_form.dart';
import 'package:shopping/features/auth/ui/forgot_password/widgets/verification_header.dart';

class VerificationTabletScreen extends StatelessWidget {
  const VerificationTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: CustomBackArrow()),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 18.0.w, vertical: 12.0.h),
        margin: EdgeInsets.symmetric(horizontal: 30.0.w, vertical: 32.0.h),
        decoration:
            Theme.of(context).extension<AppDecorations>()!.cardDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerificationHeader(),
            verticalSpace(72.0),
            VerificationForm(),
            verticalSpace(52.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 72.0.w),
              child: VerificationBlocListener(),
            ),
          ],
        ),
      ),
    );
  }
}
