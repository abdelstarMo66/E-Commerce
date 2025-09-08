import 'package:flutter/material.dart';
import 'package:shopping/core/routing/routes.dart';
import 'package:shopping/features/auth/ui/forgot_password/forgot_password_screen.dart';
import 'package:shopping/features/auth/ui/forgot_password/reset_password_screen.dart';
import 'package:shopping/features/auth/ui/forgot_password/verification_screen.dart';
import 'package:shopping/features/auth/ui/login/login_screen.dart';
import 'package:shopping/features/auth/ui/register/complete_profile_screen.dart';
import 'package:shopping/features/auth/ui/register/register_screen.dart';
import 'package:shopping/features/auth/ui/register/verify_registration_screen.dart';
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
        return AnimationRoute(page: const VerifyRegistrationScreen());
      case Routes.completeProfile:
        return AnimationRoute(page: const CompleteProfileScreen());
      case Routes.forgotPassword:
        return AnimationRoute(page: const ForgotPasswordScreen());
      case Routes.verification:
        return AnimationRoute(page: const VerificationScreen());
      case Routes.resetPassword:
        return AnimationRoute(page: const ResetPasswordScreen());

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
