import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../core/constants.dart';
import 'widgets/custom_auth_scaffold.dart';
import 'widgets/custom_elevated_button.dart';
import 'widgets/verification_code_form.dart';

class VerificationCodePage extends StatelessWidget {
  const VerificationCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final systemBarSize = MediaQuery.of(context).viewPadding.top;
    final bottomBarSize = MediaQuery.of(context).viewPadding.bottom;
    final appBarSize = AppBar().preferredSize.height;

    return CustomAuthScaffold(
      onPressed: () => Modular.to.navigate('/auth/forgotpassword'),
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
                'Digite o código de\nverificação!',
                style: TextStyle(color: Constants.peachColor, fontSize: 30),
              ),
              const Text(
                'Por favor, digite o código enviado para o e-mail:\nteste@gmail.com',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              const SizedBox(height: 10),
              const VerificationCodeForm(),
            ]),
          ),
        ),
      ),
    );
  }
}
