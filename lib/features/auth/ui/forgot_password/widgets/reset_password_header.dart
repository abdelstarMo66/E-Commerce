import 'package:flutter/material.dart';
import 'package:shopping/core/helpers/spacing.dart';

class ResetPasswordHeader extends StatelessWidget {
  const ResetPasswordHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Update Password',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        verticalSpace(18.0),
        Text(
          'Lengkapi data terakhir berikut untuk masuk ke aplikasi Mega Mall',
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ],
    );
  }
}
