import 'package:flutter/material.dart';

import '../../../core/constants.dart';

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
          alignment: AlignmentDirectional.centerEnd,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: 77,
              child: Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(97, 108, 242, 1.0)),
                width: 42,
                height: 42,
              ),
            ),
            RichText(
                text: const TextSpan(
                    text: 'Up Inv',
                    style: TextStyle(
                        color: Constants.peachColor,
                        fontSize: 26,
                        fontWeight: FontWeight.w400),
                    children: [
                  TextSpan(
                      text: 'est',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                      ))
                ])),
          ],
        ),
      ],
    );
  }
}
