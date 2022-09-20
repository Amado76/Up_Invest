import 'package:flutter_modular/flutter_modular.dart';

import 'get_started_page.dart';

class GetStartedModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const GetStartedPage())
  ];
}
