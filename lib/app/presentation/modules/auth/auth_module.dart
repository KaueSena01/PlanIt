import 'package:flutter_modular/flutter_modular.dart';
import 'package:plan_it/app/presentation/modules/auth/pages/sign_up_page.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const SignUpPage()),
      ];
}
