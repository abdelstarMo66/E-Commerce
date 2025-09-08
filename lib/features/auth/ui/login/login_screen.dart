import 'package:flutter/material.dart';
import 'package:shopping/core/utils/adaptive_layout_service.dart';
import 'package:shopping/features/auth/ui/login/veiws/mobile/login_mobile_screen.dart';
import 'package:shopping/features/auth/ui/login/veiws/tablet/login_tablet_screen.dart';
import 'package:shopping/features/auth/ui/login/veiws/website/login_website_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobile: LoginMobileScreen(),
      tablet: LoginTabletScreen(),
      website: LoginWebsiteScreen(),
    );
  }
}
