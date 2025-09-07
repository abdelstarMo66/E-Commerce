import 'package:flutter/material.dart';
import 'package:shopping/core/theme/color_manager.dart';
import 'package:shopping/core/theme/style_manager.dart';
import 'package:shopping/core/utils/methods_manager.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  final String? Function(String?) validator;
  final String hintText;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const CustomTextFormField({
    super.key,
    required this.textEditingController,
    required this.textInputType,
    required this.hintText,
    required this.validator,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      keyboardType: textInputType,
      validator: validator,
      obscureText: obscureText,
      cursorColor:
          MethodsManager.getBrightness() == Brightness.light
              ? ColorManager.lPrimaryColor
              : ColorManager.dPrimaryColor,
      style: TextStyleManager.medium(
        color:
            MethodsManager.getBrightness() == Brightness.light
                ? ColorManager.onyxColor
                : ColorManager.offWhiteColor,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
    );
  }
}
