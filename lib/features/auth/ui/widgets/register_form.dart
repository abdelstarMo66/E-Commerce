import 'package:flutter/material.dart';
import 'package:shopping/core/helpers/spacing.dart';
import 'package:shopping/core/widgets/custom_text_form_field.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController emailController = TextEditingController();

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
      ],
    );
  }
}
