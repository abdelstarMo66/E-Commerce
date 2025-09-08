import 'package:flutter/material.dart';
import 'package:shopping/core/helpers/extensions.dart';
import 'package:shopping/core/helpers/spacing.dart';
import 'package:shopping/core/theme/color_manager.dart';

class VerifyRegistrationHeader extends StatelessWidget {
  const VerifyRegistrationHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Verification', style: Theme.of(context).textTheme.headlineLarge),
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
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
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
      ],
    );
  }
}
