import 'package:flutter/material.dart';

import '../../core/constants.dart';
import 'widgets/login_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final systemBarSize = MediaQuery.of(context).viewPadding.top;
    final bottomBarSize = MediaQuery.of(context).viewPadding.bottom;
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: SizedBox(
            height: size.height - systemBarSize - bottomBarSize,
            width: size.width,
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Image.asset(
                  'assets/images/logo_up_invest.png',
                  alignment: Alignment.center,
                ),
                const SizedBox(height: 100),
                const LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
