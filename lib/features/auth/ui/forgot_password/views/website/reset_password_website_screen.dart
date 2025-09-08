import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping/core/helpers/extensions.dart';
import 'package:shopping/core/helpers/spacing.dart';
import 'package:shopping/features/auth/ui/forgot_password/widgets/reset_password_bloc_listener.dart';
import 'package:shopping/features/auth/ui/forgot_password/widgets/reset_password_form.dart';
import 'package:shopping/features/auth/ui/forgot_password/widgets/reset_password_header.dart';

class ResetPasswordWebsiteScreen extends StatelessWidget {
  const ResetPasswordWebsiteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 22.0.w),
          margin: EdgeInsets.symmetric(horizontal: 38.0.w, vertical: 64.0.h),
          decoration:
              Theme.of(context).extension<AppDecorations>()!.cardDecoration,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ResetPasswordHeader()],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ResetPasswordForm(),
                    verticalSpace(52.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 64.0),
                      child: ResetPasswordBlocListener(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
