import 'package:flutter/material.dart';

import '../../../core/constants.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(400, 65),
          backgroundColor: Constants.secondaryColor,
          foregroundColor: Constants.onyxColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
