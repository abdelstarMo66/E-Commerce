import 'package:flutter/material.dart';
import 'package:shopping/core/helpers/spacing.dart';
import 'package:shopping/core/widgets/custom_text_form_field.dart';

class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({super.key});

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  bool obscurePassword = true;
  bool obscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("New Password", style: Theme.of(context).textTheme.labelSmall),
        verticalSpace(12.0),
        CustomTextFormField(
          textEditingController: passwordController,
          textInputType: TextInputType.visiblePassword,
          hintText: "Enter your new password?",
          validator: (p0) => null,
          obscureText: obscurePassword,
          suffixIcon: IconButton(
            onPressed: () {
              obscurePassword = !obscurePassword;
              setState(() {});
            },
            icon: Icon(
              obscurePassword
                  ? Icons.visibility_rounded
                  : Icons.visibility_off_rounded,
            ),
          ),
        ),
        verticalSpace(24.0),
        Text("Confirm New Password", style: Theme.of(context).textTheme.labelSmall),
        verticalSpace(12.0),
        CustomTextFormField(
          textEditingController: confirmPasswordController,
          textInputType: TextInputType.visiblePassword,
          hintText: "Enter your confirm new password?",
          validator: (p0) => null,
          obscureText: obscureConfirmPassword,
          suffixIcon: IconButton(
            onPressed: () {
              obscureConfirmPassword = !obscureConfirmPassword;
              setState(() {});
            },
            icon: Icon(
              obscureConfirmPassword
                  ? Icons.visibility_rounded
                  : Icons.visibility_off_rounded,
            ),
          ),
        ),
      ],
    );
  }
}
