import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping/core/helpers/spacing.dart';
import 'package:shopping/core/theme/color_manager.dart';
import 'package:shopping/core/widgets/custom_pin_code.dart';

class VerifyRegistrationForm extends StatelessWidget {
  const VerifyRegistrationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Verification Code",
              style: Theme.of(context).textTheme.displayMedium,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Re-send Code",
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: ColorManager.blueColor,
                ),
              ),
            ),
          ],
        ),
        verticalSpace(18.0),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: CustomPinCode(),
        ),
      ],
    );
  }
}
