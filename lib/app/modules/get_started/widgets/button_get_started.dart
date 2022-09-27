import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ButtonGetStarted extends StatelessWidget {
  const ButtonGetStarted({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ElevatedButton.icon(
        icon: const ImageIcon(
            AssetImage(
              'assets/icons/short_right.png',
            ),
            size: 40),
        onPressed: () => Modular.to.navigate('/auth'),
        style: ElevatedButton.styleFrom(
            alignment: Alignment.centerLeft,
            minimumSize: const Size(400, 65),
            backgroundColor: Colors.white,
            foregroundColor: const Color.fromRGBO(122, 128, 142, 1.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        label: const Padding(
          padding: EdgeInsets.only(right: 142.0),
          child: Text(
            'Inicie sua Jornada',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
