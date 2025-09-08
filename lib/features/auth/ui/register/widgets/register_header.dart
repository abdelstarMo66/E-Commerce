import 'package:flutter/material.dart';
import 'package:shopping/core/helpers/spacing.dart';

class RegisterHeader extends StatelessWidget {
  const RegisterHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Register Account',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        verticalSpace(18.0),
        Text(
          'Masukan Email/ No. Hp untuk mendaftar ',
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ],
    );
  }
}
