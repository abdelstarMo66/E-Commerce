import 'package:flutter/material.dart';
import 'package:shopping/core/utils/adaptive_layout_service.dart';
import 'package:shopping/features/auth/ui/register/views/mobile/complete_profile_mobile_screen.dart';
import 'package:shopping/features/auth/ui/register/views/tablet/complete_profile_tablet_screen.dart';
import 'package:shopping/features/auth/ui/register/views/website/complete_profile_website_screen.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobile: CompleteProfileMobileScreen(),
      tablet: CompleteProfileTabletScreen(),
      website: CompleteProfileWebsiteScreen(),
    );
  }
}
