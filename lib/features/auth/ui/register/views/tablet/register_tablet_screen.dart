import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping/core/helpers/extensions.dart';
import 'package:shopping/core/helpers/spacing.dart';
import 'package:shopping/features/auth/ui/register/widgets/register_action_buttons.dart';
import 'package:shopping/features/auth/ui/register/widgets/register_bloc_listener.dart';
import 'package:shopping/features/auth/ui/register/widgets/register_form.dart';
import 'package:shopping/features/auth/ui/register/widgets/register_header.dart';

class RegisterTabletScreen extends StatelessWidget {
  const RegisterTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 12.0.h),
          margin: EdgeInsets.symmetric(horizontal: 30.0.w, vertical: 32.0.h),
          decoration:
              Theme.of(context).extension<AppDecorations>()!.cardDecoration,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RegisterHeader(),
              verticalSpace(72.0),
              RegisterForm(),
              verticalSpace(52.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 64.0),
                child: RegisterBlocListener(),
              ),
              verticalSpace(82.0),
              RegisterActionButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
