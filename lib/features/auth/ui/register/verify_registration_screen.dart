import 'package:flutter/material.dart';
import 'package:shopping/core/utils/adaptive_layout_service.dart';
import 'package:shopping/features/auth/ui/register/views/mobile/verify_registration_mobile_screen.dart';
import 'package:shopping/features/auth/ui/register/views/tablet/verify_registration_tablet_screen.dart';
import 'package:shopping/features/auth/ui/register/views/website/verify_registration_website_screen.dart';

class VerifyRegistrationScreen extends StatelessWidget {
  const VerifyRegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobile: VerifyRegistrationMobileScreen(),
      tablet: VerifyRegistrationTabletScreen(),
      website: VerifyRegistrationWebsiteScreen(),
    );
  }
}
