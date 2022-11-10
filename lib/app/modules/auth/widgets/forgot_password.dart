import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../core/constants.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Modular.to.navigate('/auth/forgotpassword'),
      child: const Text(
        'Esqueceu a Senha?',
        style: TextStyle(color: Constants.peachColor),
      ),
    );
  }
}
