import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
        child: SingleChildScrollView(
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
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Constants.onyxColor,
                          height: 2,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          'Ou continue com',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Constants.onyxColor,
                          height: 2,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/logo_facebook.png'),
                        iconSize: 55,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/logo_google.png'),
                        iconSize: 55,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/logo_apple.png'),
                        iconSize: 55,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    const Text(
                      'Não possui uma conta?',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      child: const Text(
                        'Cadastre-se',
                        style: TextStyle(color: Constants.peachColor),
                      ),
                      onPressed: () => Modular.to.navigate('/auth/singup'),
                    )
                  ])
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
