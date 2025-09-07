import 'package:flutter/material.dart';
import 'package:shopping/core/helpers/extensions.dart';
import 'package:shopping/core/helpers/spacing.dart';
import 'package:shopping/core/routing/routes.dart';
import 'package:shopping/core/theme/color_manager.dart';
import 'package:shopping/core/widgets/custom_back_arrow.dart';
import 'package:shopping/core/widgets/custom_elevated_button.dart';
import 'package:shopping/features/auth/ui/widgets/custom_pin_code.dart';

class VerifyRegistration extends StatelessWidget {
  const VerifyRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: CustomBackArrow()),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(62.0),
              Text(
                'Verification',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              verticalSpace(18.0),
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.labelSmall,
                  children: [
                    const TextSpan(
                      text:
                          'Kami telah mengirimkan kode verifikasi ke +628*******716 ',
                    ),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: GestureDetector(
                        onTap: () => context.pop(),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            "Ganti?",
                            style: Theme.of(
                              context,
                            ).textTheme.labelSmall?.copyWith(
                              color: ColorManager.blueColor,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              verticalSpace(72.0),
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
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: CustomPinCode(),
              ),
              verticalSpace(42.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 64.0),
                child: CustomElevatedButton(
                  text: "Continue",
                  onPressed:
                      () => context.pushNamedAndRemoveUntil(
                        Routes.completeProfile,
                        predicate: (route) => false,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
