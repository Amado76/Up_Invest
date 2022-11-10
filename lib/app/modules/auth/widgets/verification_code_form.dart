import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import 'custom_elevated_button.dart';

class VerificationCodeForm extends StatelessWidget {
  const VerificationCodeForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
                width: 80,
                height: 120,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Constants.onyxColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w800),
                  decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                )),
            SizedBox(
                width: 80,
                height: 120,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Constants.onyxColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w800),
                  decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                )),
            SizedBox(
                width: 80,
                height: 120,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Constants.onyxColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w800),
                  decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                )),
            SizedBox(
                width: 80,
                height: 120,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Constants.onyxColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w800),
                  decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                )),
          ],
        ),
        const Expanded(child: SizedBox()),
        CustomElevatedButton(text: 'Submeter!!', onPressed: () {}),
        const SizedBox(height: 40),
      ],
    ));
  }
}
