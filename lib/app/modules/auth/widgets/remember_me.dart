import 'package:flutter/material.dart';

import '../../../core/constants.dart';

class RememberMe extends StatefulWidget {
  const RememberMe({Key? key}) : super(key: key);

  @override
  State<RememberMe> createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = true;
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
                  isChecked = value!;
                });
              }),
        ),
        const Text(
          'Manter Logado',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
