import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping/core/helpers/extensions.dart';
import 'package:shopping/core/helpers/spacing.dart';
import 'package:shopping/features/auth/ui/widgets/login_action_buttons.dart';
import 'package:shopping/features/auth/ui/widgets/login_bloc_listener.dart';
import 'package:shopping/features/auth/ui/widgets/login_form.dart';
import 'package:shopping/features/auth/ui/widgets/login_header.dart';

class LoginWebsiteScreen extends StatelessWidget {
  const LoginWebsiteScreen({super.key});

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
                  children: [LoginHeader()],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LoginForm(),
                    verticalSpace(52.0.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 64.0),
                      child: LoginBlocListener(),
                    ),
                    verticalSpace(82.0.h),
                    LoginActionButtons(),
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
