import 'package:flutter/material.dart';
import 'package:shopping/core/utils/adaptive_layout_service.dart';
import 'package:shopping/features/auth/ui/forgot_password/views/mobile/forgot_password_mobile_screen.dart';
import 'package:shopping/features/auth/ui/forgot_password/views/tablet/forgot_password_tablet_screen.dart';
import 'package:shopping/features/auth/ui/forgot_password/views/website/forgot_password_website_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobile: ForgotPasswordMobileScreen(),
      tablet: ForgotPasswordTabletScreen(),
      website: ForgotPasswordWebsiteScreen(),
    );
  }
}
