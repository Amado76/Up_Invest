// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../core/constants.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final String? Function(String?) validator;
  final bool obscureText;

  const CustomTextFormField({
    Key? key,
    required this.label,
    required this.validator,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      obscureText: obscureText,
      style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Constants.onyxColor),
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: label,
          hintStyle: const TextStyle(color: Constants.peachColor),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          label: Center(child: Text(label)),
          labelStyle: const TextStyle(
            fontSize: 23,
            color: Constants.peachColor,
          ),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(10)))),
    );
  }
}
