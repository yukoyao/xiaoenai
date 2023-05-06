import 'package:get/get.dart';
import 'package:xiaoenai/app/features/auth/login/views/login_screen.dart';
import 'package:xiaoenai/app/features/auth/register/views/register_screen.dart';
import 'package:xiaoenai/app/features/auth/verify/views/verify_screen.dart';
import 'package:xiaoenai/app/features/index/views/home_screen.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.login;

  static final routes = [
    GetPage(
      name: _Path.login,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Path.verify,
      page: () => const VerifyScreen(),
      binding: VerifyBinding(),
    ),
    GetPage(
      name: _Path.register,
      page: () => const RegisterScreen(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Path.home,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}
