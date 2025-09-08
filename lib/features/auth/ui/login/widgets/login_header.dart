import 'package:flutter/material.dart';
import 'package:shopping/core/helpers/spacing.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome back to MarKeTy',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        verticalSpace(18.0),
        Text(
          'Silahkan masukan data untuk login',
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ],
    );
  }
}
