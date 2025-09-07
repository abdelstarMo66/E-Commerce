import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shopping/core/theme/color_manager.dart';
import 'package:shopping/core/theme/font_manager.dart';
import 'package:shopping/core/theme/style_manager.dart';
import 'package:shopping/core/utils/methods_manager.dart';

class CustomPinCode extends StatelessWidget {
  const CustomPinCode({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      length: 4,
      animationType: AnimationType.scale,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(10.0),
        fieldHeight: 55.0,
        fieldWidth: 55.0,
        activeFillColor: ColorManager.dBGColor,
        activeColor: ColorManager.dPrimaryColor,
        selectedColor: ColorManager.dPrimaryColor,
        selectedFillColor: ColorManager.lightGreyColor.withValues(alpha: 0.4),
        inactiveColor: ColorManager.darkGreyColor.withValues(alpha: 0.2),
        inactiveFillColor: ColorManager.darkGreyColor.withValues(alpha: 0.2),
      ),
      cursorColor: MethodsManager.getBrightness() == Brightness.light
          ? ColorManager.lPrimaryColor
          : ColorManager.dPrimaryColor,
      keyboardType: TextInputType.number,
      textStyle: TextStyleManager.medium(
        fontSize: FontSize.s24,
        color:
        MethodsManager.getBrightness() == Brightness.light
            ? ColorManager.onyxColor
            : ColorManager.offWhiteColor,
      ),
      animationDuration: Duration(milliseconds: 300),
      backgroundColor: ColorManager.dBGColor,
      enableActiveFill: true,
      onCompleted: (v) {
        print("Completed");
      },
      beforeTextPaste: (text) {
        print("Allowing to paste $text");
        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
        //but you can show anything you want here, like your pop up saying wrong paste format or etc
        return true;
      },
      appContext: context,
    );
  }
}
