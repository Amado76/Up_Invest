import 'package:flutter/material.dart';

class ButtonGetStarted extends StatelessWidget {
  const ButtonGetStarted({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ElevatedButton.icon(
        icon: const ImageIcon(AssetImage('assets/icons/short_right.png'),
            size: 25),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            alignment: Alignment.centerLeft,
            minimumSize: const Size(400, 45),
            primary: Colors.white,
            onPrimary: const Color.fromRGBO(122, 128, 142, 1.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        label: const Padding(
          padding: EdgeInsets.only(right: 120.0),
          child: Text(
            'Inicie sua Jornada',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
