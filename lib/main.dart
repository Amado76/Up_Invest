import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app/app_module.dart';
import 'app/my_app.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const MyApp()));
}
