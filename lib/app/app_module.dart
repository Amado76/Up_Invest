import 'package:flutter_modular/flutter_modular.dart';
import 'package:up_invest/app/modules/get_started/get_started_module.dart';

import 'modules/auth/auth_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/',
            module: GetStartedModule(), transition: TransitionType.fadeIn),
        ModuleRoute('/auth',
            module: AuthModule(), transition: TransitionType.fadeIn)
      ];
}
