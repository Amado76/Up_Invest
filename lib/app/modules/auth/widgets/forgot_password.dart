import 'package:flutter/material.dart';

import '../../../core/constants.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Text(
        'Esqueceu a Senha?',
        style: TextStyle(color: Constants.peachColor),
      ),
    );
  }
}
