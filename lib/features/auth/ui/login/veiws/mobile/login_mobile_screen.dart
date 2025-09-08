import 'package:flutter/material.dart';
import 'package:shopping/core/helpers/spacing.dart';
import 'package:shopping/features/auth/ui/login/widgets/login_action_buttons.dart';
import 'package:shopping/features/auth/ui/login/widgets/login_bloc_listener.dart';
import 'package:shopping/features/auth/ui/login/widgets/login_form.dart';
import 'package:shopping/features/auth/ui/login/widgets/login_header.dart';

class LoginMobileScreen extends StatelessWidget {
  const LoginMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(62.0),
                LoginHeader(),
                verticalSpace(72.0),
                LoginForm(),
                verticalSpace(52.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 64.0),
                  child: LoginBlocListener(),
                ),
                verticalSpace(82.0),
                LoginActionButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
