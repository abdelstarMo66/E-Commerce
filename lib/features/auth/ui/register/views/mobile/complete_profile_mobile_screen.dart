import 'package:flutter/material.dart';
import 'package:shopping/core/helpers/spacing.dart';
import 'package:shopping/features/auth/ui/register/widgets/complete_profile_bloc_listener.dart';
import 'package:shopping/features/auth/ui/register/widgets/complete_profile_form.dart';
import 'package:shopping/features/auth/ui/register/widgets/complete_profile_header.dart';

class CompleteProfileMobileScreen extends StatelessWidget {
  const CompleteProfileMobileScreen({super.key});

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
                CompleteProfileHeader(),
                verticalSpace(72.0),
                CompleteProfileForm(),
                verticalSpace(52.0),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 64.0,
                    vertical: 32.0,
                  ),
                  child: CompleteProfileBlocListener(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
