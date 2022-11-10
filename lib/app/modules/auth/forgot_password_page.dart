import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:up_invest/app/modules/auth/widgets/custom_auth_scaffold.dart';
import 'package:up_invest/app/modules/auth/widgets/custom_elevated_button.dart';
import 'package:up_invest/app/modules/auth/widgets/custom_text_form_field.dart';

import '../../core/constants.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final systemBarSize = MediaQuery.of(context).viewPadding.top;
    final bottomBarSize = MediaQuery.of(context).viewPadding.bottom;
    final appBarSize = AppBar().preferredSize.height;

    return CustomAuthScaffold(
      onPressed: () => Modular.to.navigate('/auth'),
      widget: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: SingleChildScrollView(
          child: SizedBox(
            height: size.height - appBarSize - bottomBarSize - systemBarSize,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Align(
                alignment: Alignment.topRight,
                child: SizedBox(
                    height: 220,
                    child: Image.asset('assets/images/forgot_password.png')),
              ),
              const Text(
                'Esqueceu a sua senha?',
                style: TextStyle(
                    color: Constants.peachColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 10),
              const Text(
                'Sem problemas! Basta digitar o seu e-mail \ne nossos astrounautas enviarão o código \nde recuperação para você!',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              const Expanded(child: SizedBox()),
              CustomTextFormField(
                  label: 'Seu e-mail',
                  validator: (text) {
                    return null;
                  }),
              const SizedBox(height: 15),
              CustomElevatedButton(
                  text: 'Submeter!!',
                  onPressed: () =>
                      Modular.to.navigate('/auth/verificationcode')),
              const SizedBox(height: 40),
            ]),
          ),
        ),
      ),
    );
  }
}
