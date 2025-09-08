import 'package:flutter/material.dart';
import 'package:shopping/core/helpers/spacing.dart';
import 'package:shopping/features/auth/ui/register/widgets/register_action_buttons.dart';
import 'package:shopping/features/auth/ui/register/widgets/register_bloc_listener.dart';
import 'package:shopping/features/auth/ui/register/widgets/register_form.dart';
import 'package:shopping/features/auth/ui/register/widgets/register_header.dart';

class RegisterMobileScreen extends StatelessWidget {
  const RegisterMobileScreen({super.key});

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
                RegisterHeader(),
                verticalSpace(72.0),
                RegisterForm(),
                verticalSpace(52.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 64.0),
                  child: RegisterBlocListener(),
                ),
                verticalSpace(82.0),
                RegisterActionButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
