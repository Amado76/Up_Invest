import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:up_invest/app/modules/auth/widgets/custom_elevated_button.dart';

import '../../core/constants.dart';

class SingUpSucessPage extends StatelessWidget {
  const SingUpSucessPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final systemBarSize = MediaQuery.of(context).viewPadding.top;
    final bottomBarSize = MediaQuery.of(context).viewPadding.bottom;
    final appBarSize = AppBar().preferredSize.height;
    return Scaffold(
        backgroundColor: Constants.backgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
              child: SizedBox(
            height: size.height - systemBarSize - bottomBarSize - appBarSize,
            child: Column(
              children: [
                Stack(children: [
                  Container(
                    height: 300,
                    width: size.width,
                    decoration: const BoxDecoration(
                        color: Constants.primaryColor,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(280))),
                  ),
                  Positioned(
                    top: 105,
                    left: 240,
                    child: CircleAvatar(
                      radius: 100,
                      backgroundColor: Colors.transparent,
                      child: Image.asset('assets/images/sucess.png'),
                    ),
                  )
                ]),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    children: const [
                      SizedBox(height: 80),
                      Text(
                        'Parabéns!',
                        style: TextStyle(
                            color: Constants.peachColor,
                            fontSize: 70,
                            fontWeight: FontWeight.w900),
                      ),
                      Text('Seu cadastro foi realizado com sucesso. Você ',
                          style: TextStyle(
                              color: Constants.onyxColor, fontSize: 16)),
                      Text('será redirecionado em poucos segundos!',
                          style: TextStyle(
                              color: Constants.onyxColor, fontSize: 16)),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    children: [
                      CustomElevatedButton(
                        text: 'Ir para Home',
                        onPressed: () => Modular.to.navigate('/'),
                        textColor: Colors.white,
                        backgroundColor: Constants.onyxColor,
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                )
              ],
            ),
          )),
        ));
  }
}
