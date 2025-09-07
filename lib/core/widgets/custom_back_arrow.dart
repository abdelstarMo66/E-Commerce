import 'package:flutter/material.dart';
import 'package:shopping/core/helpers/extensions.dart';

class CustomBackArrow extends StatelessWidget {
  const CustomBackArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.pop(),
      icon: Icon(Icons.arrow_back_ios_outlined),
    );
  }
}
