import 'package:flutter/material.dart';
import 'package:shopping/core/helpers/spacing.dart';
import 'package:shopping/core/widgets/custom_text_form_field.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({super.key});

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Full Name", style: Theme.of(context).textTheme.labelSmall),
        verticalSpace(12.0),
        CustomTextFormField(
          textEditingController: nameController,
          textInputType: TextInputType.text,
          hintText: "Enter your full name",
          validator: (p0) => null,
        ),
        verticalSpace(24.0),
        Text("Password", style: Theme.of(context).textTheme.labelSmall),
        verticalSpace(12.0),
        CustomTextFormField(
          textEditingController: passwordController,
          textInputType: TextInputType.visiblePassword,
          hintText: "Enter your password?",
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
      ],
    );
  }
}
