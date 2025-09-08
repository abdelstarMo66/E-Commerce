import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shopping/core/theme/color_manager.dart';
import 'package:shopping/core/theme/style_manager.dart';

class CustomPinCode extends StatelessWidget {
  const CustomPinCode({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      controller: TextEditingController(),
      length: 4,
      textStyle: CustomTextStyleManager.textStylePinCode,
      keyboardType: TextInputType.number,
      cursorColor: CustomColorManager.customPrimaryColor,
      backgroundColor: ColorManager.transparent,
      animationType: AnimationType.scale,
      animationDuration: Duration(milliseconds: 300),
      enableActiveFill: true,
      pinTheme: PinTheme(
        fieldOuterPadding: EdgeInsets.symmetric(horizontal: 12.0.w),
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(10.0),
        fieldHeight: 55.0,
        fieldWidth: 55.0,
        activeFillColor: CustomColorManager.customBGColor,
        activeColor: CustomColorManager.customPrimaryColor,
        selectedColor: CustomColorManager.customPrimaryColor,
        selectedFillColor: ColorManager.lightGreyColor.withValues(alpha: 0.4),
        inactiveColor: ColorManager.darkGreyColor.withValues(alpha: 0.2),
        inactiveFillColor: ColorManager.darkGreyColor.withValues(alpha: 0.2),
      ),
    );
  }
}
