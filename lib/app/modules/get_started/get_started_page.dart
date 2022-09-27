import 'package:flutter/material.dart';
import 'package:up_invest/app/core/constants.dart';
import 'package:up_invest/app/modules/get_started/widgets/app_name_text.dart';
import 'package:up_invest/app/modules/get_started/widgets/button_get_started.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

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
              child: Column(children: [
                Column(
                  children: const [
                    SizedBox(height: 20),
                    AppNameText(),
                    SizedBox(height: 36),
                  ],
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/main.png',
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          'Voe para a sua\n' 'Independência financeira',
                          style: TextStyle(
                              color: Constants.peachColor,
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    const ButtonGetStarted(),
                    const SizedBox(height: 40),
                  ],
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
