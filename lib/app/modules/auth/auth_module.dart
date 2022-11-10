import 'package:flutter_modular/flutter_modular.dart';
import 'package:up_invest/app/modules/auth/forgot_password_page.dart';
import 'package:up_invest/app/modules/auth/login_page.dart';
import 'package:up_invest/app/modules/auth/sing_up_page.dart';
import 'package:up_invest/app/modules/auth/sing_up_sucess_page.dart';
import 'package:up_invest/app/modules/auth/verification_code_page.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const LoginPage()),
    ChildRoute('/singup', child: (_, args) => const SingUpPage()),
    ChildRoute('/sucess', child: (_, args) => const SingUpSucessPage()),
    ChildRoute('/forgotpassword',
        child: (_, args) => const ForgotPasswordPage()),
    ChildRoute('/verificationcode',
        child: (_, args) => const VerificationCodePage()),
  ];
}
