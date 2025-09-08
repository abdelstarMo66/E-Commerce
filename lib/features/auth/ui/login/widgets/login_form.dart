import 'package:flutter/material.dart';
import 'package:shopping/core/helpers/spacing.dart';
import 'package:shopping/core/widgets/custom_text_form_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Email Address", style: Theme.of(context).textTheme.labelSmall),
        verticalSpace(12.0),
        CustomTextFormField(
          textEditingController: emailController,
          textInputType: TextInputType.emailAddress,
          hintText: "Enter your email address?",
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
