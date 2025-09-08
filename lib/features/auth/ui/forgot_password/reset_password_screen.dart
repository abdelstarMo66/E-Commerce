import 'package:flutter/material.dart';
import 'package:shopping/core/utils/adaptive_layout_service.dart';
import 'package:shopping/features/auth/ui/forgot_password/views/mobile/reset_password_mobile_screen.dart';
import 'package:shopping/features/auth/ui/forgot_password/views/tablet/reset_password_tablet_screen.dart';
import 'package:shopping/features/auth/ui/forgot_password/views/website/reset_password_website_screen.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobile: ResetPasswordMobileScreen(),
      tablet: ResetPasswordTabletScreen(),
      website: ResetPasswordWebsiteScreen(),
    );
  }
}
