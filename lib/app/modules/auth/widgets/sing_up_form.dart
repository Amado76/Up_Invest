import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../core/constants.dart';
import 'custom_check_box.dart';
import 'custom_elevated_button.dart';
import 'custom_text_form_field.dart';

class SingUpForm extends StatelessWidget {
  const SingUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFormField(
              label: 'Seu nome',
              validator: (text) {
                return null;
              }),
          const SizedBox(height: 11),
          CustomTextFormField(
              label: 'Seu e-mail',
              validator: (text) {
                return null;
              }),
          const SizedBox(height: 11),
          CustomTextFormField(
            label: 'Digite sua senha',
            validator: (text) {
              return null;
            },
            obscureText: true,
          ),
          const SizedBox(height: 11),
          CustomTextFormField(
            label: 'Repita sua senha',
            validator: (text) {
              return null;
            },
            obscureText: true,
          ),
          const SizedBox(height: 11),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CustomCheckBox(),
              TextButton(
                child: const Text(
                  'Concordo com os termos de uso',
                  style: TextStyle(color: Constants.peachColor, fontSize: 15),
                ),
                onPressed: () => {},
              ),
            ],
          ),
          const SizedBox(height: 10),
          CustomElevatedButton(
              text: 'Submeter!',
              onPressed: () => Modular.to.navigate('/auth/sucess'))
        ],
      ),
    );
  }
}
