import 'package:flutter/material.dart';
import 'package:shopping/core/utils/adaptive_layout_service.dart';
import 'package:shopping/features/auth/ui/forgot_password/views/mobile/verification_mobile_screen.dart';
import 'package:shopping/features/auth/ui/forgot_password/views/tablet/verification_tablet_screen.dart';
import 'package:shopping/features/auth/ui/forgot_password/views/website/verification_website_screen.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobile: VerificationMobileScreen(),
      tablet: VerificationTabletScreen(),
      website: VerificationWebsiteScreen(),
    );
  }
}
