import 'package:flutter/material.dart';

import '../../core/constants.dart';

class AppNameText extends StatelessWidget {
  const AppNameText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: 50,
              child: Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(97, 108, 242, 1.0)),
                width: 28,
                height: 28,
              ),
            ),
            RichText(
                text: const TextSpan(
                    text: 'Up Inv',
                    style: TextStyle(
                        color: Constants.peachColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    children: [
                  TextSpan(
                      text: 'est',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                      ))
                ])),
          ],
        ),
      ],
    );
  }
}
