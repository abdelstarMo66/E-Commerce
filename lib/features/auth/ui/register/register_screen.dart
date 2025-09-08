import 'package:flutter/material.dart';
import 'package:shopping/core/utils/adaptive_layout_service.dart';
import 'package:shopping/features/auth/ui/register/views/mobile/register_mobile_screen.dart';
import 'package:shopping/features/auth/ui/register/views/tablet/register_tablet_screen.dart';
import 'package:shopping/features/auth/ui/register/views/website/register_website_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobile: RegisterMobileScreen(),
      tablet: RegisterTabletScreen(),
      website: RegisterWebsiteScreen(),
    );
  }
}
