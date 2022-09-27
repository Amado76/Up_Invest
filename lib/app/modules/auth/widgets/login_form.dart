// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:up_invest/app/modules/auth/widgets/remember_me.dart';

import 'custom_elevated_button.dart';
import 'custom_text_form_field.dart';
import 'forgot_password.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isChecked = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            CustomTextFormField(
                label: 'Informe seu e-mail',
                validator: (text) {
                  return null;
                }),
            const SizedBox(
              height: 11,
            ),
            CustomTextFormField(
              label: 'Informe sua senha',
              validator: (text) {
                return null;
              },
              obscureText: true,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                RememberMe(),
                ForgotPassword(),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            CustomElevatedButton(
              text: 'Login',
              onPressed: () {},
            )
          ],
        ));
  }
}
