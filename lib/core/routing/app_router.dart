import 'package:flutter/material.dart';
import 'package:shopping/core/routing/routes.dart';
import 'package:shopping/features/auth/ui/login_screen.dart';
import 'package:shopping/features/auth/ui/views/mobile/complete_profile.dart';
import 'package:shopping/features/auth/ui/views/mobile/forgot_password.dart';
import 'package:shopping/features/auth/ui/views/mobile/register_screen.dart';
import 'package:shopping/features/auth/ui/views/mobile/reset_password.dart';
import 'package:shopping/features/auth/ui/views/mobile/verification.dart';
import 'package:shopping/features/auth/ui/views/mobile/verify_registration.dart';
import 'package:shopping/features/layout/layout.dart';
import 'package:shopping/features/splash/splash_screen.dart';

import 'animation_route.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Welcome
      case Routes.splash:
        return AnimationRoute(page: const SplashScreen());

      // Authentication
      case Routes.login:
        return AnimationRoute(page: const LoginScreen());
      case Routes.register:
        return AnimationRoute(page: const RegisterScreen());
      case Routes.verifyRegistration:
        return AnimationRoute(page: const VerifyRegistration());
      case Routes.completeProfile:
        return AnimationRoute(page: const CompleteProfile());
      case Routes.forgotPassword:
        return AnimationRoute(page: const ForgotPassword());
      case Routes.verification:
        return AnimationRoute(page: const Verification());
      case Routes.resetPassword:
        return AnimationRoute(page: const ResetPassword());

      // Home
      case Routes.layout:
        return AnimationRoute(page: const Layout());

      // Profile

      // undefined
      default:
        return unDefinitionRoute(settings);
    }
  }

  AnimationRoute unDefinitionRoute(RouteSettings settings) => AnimationRoute(
    page: Scaffold(
      body: Center(
        child: Text('no route defined for this page ${settings.name}'),
      ),
    ),
  );
}
