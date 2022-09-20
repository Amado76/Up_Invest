import 'package:flutter/material.dart';
import 'package:up_invest/app/core/constants.dart';
import 'package:up_invest/app/modules/get_started/widgets/app_name_text.dart';
import 'package:up_invest/app/modules/get_started/widgets/button_get_started.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = const MediaQueryData().size;
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(children: [
            const SizedBox(
              height: 30,
            ),
            const AppNameText(),
            const SizedBox(
              height: 36,
            ),
            Image.asset('assets/images/main.png'),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Voe para a sua\n' 'Independência financeira',
                  style: TextStyle(
                      color: Constants.peachColor,
                      fontSize: 21,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(height: 50),
            const ButtonGetStarted(),
          ]),
        ),
      ),
    );
  }
}
