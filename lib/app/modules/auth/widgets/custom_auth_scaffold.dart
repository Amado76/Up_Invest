import 'package:flutter/material.dart';

import '../../../core/constants.dart';

class CustomAuthScaffold extends StatelessWidget {
  const CustomAuthScaffold(
      {super.key, required this.widget, required this.onPressed});
  final Widget widget;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Constants.primaryColor,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: onPressed,
                  icon: const ImageIcon(
                    AssetImage('assets/icons/short_left.png'),
                  )),
            ),
          ),
        ),
        backgroundColor: Constants.primaryColor,
        body: SafeArea(
          child: widget,
        ));
  }
}
