import 'package:flutter_modular/flutter_modular.dart';
import 'package:plan_it/app/presentation/modules/auth/auth_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          '/',
          module: AuthModule(),
        )
      ];
}
