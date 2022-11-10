// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../core/constants.dart';

class CustomCheckBox extends StatefulWidget {
  final String text;
  final Color color;

  const CustomCheckBox({
    Key? key,
    this.text = '',
    this.color = Colors.transparent,
  }) : super(key: key);

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Checkbox(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              activeColor: Colors.white,
              fillColor: MaterialStateProperty.resolveWith<Color>(
                  (states) => Colors.white),
              checkColor: Constants.onyxColor,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4))),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = !isChecked;
                });
              }),
        ),
        Text(
          widget.text,
          style: TextStyle(color: widget.color),
        ),
      ],
    );
  }
}
