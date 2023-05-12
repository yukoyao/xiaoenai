import 'package:get/get.dart';
import 'package:xiaoenai/app/features/auth/login/views/login_screen.dart';
import 'package:xiaoenai/app/features/auth/register/views/register_screen.dart';
import 'package:xiaoenai/app/features/auth/verify/views/verify_screen.dart';
import 'package:xiaoenai/app/features/index/download/views/download_screen.dart';
import 'package:xiaoenai/app/features/index/home/views/home_screen.dart';
import 'package:xiaoenai/app/features/index/main/views/main_screen.dart';
import 'package:xiaoenai/app/features/index/profile/dashboard/views/profile_screen.dart';
import 'package:xiaoenai/app/features/index/profile/detail/views/profile_detail_screen.dart';
import 'package:xiaoenai/app/features/index/profile/nickname_update/views/nickname_update_screen.dart';

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
      name: _Path.main,
      page: () => const MainScreen(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Path.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Path.download,
      page: () => const DownloadScreen(),
      binding: DownloadBinding(),
    ),
    GetPage(
      name: _Path.profile,
      page: () => const ProfileScreen(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Path.profileDetail,
      page: () => const ProfileDetailScreen(),
      binding: ProfileDetailBinding(),
    ),
    GetPage(
      name: _Path.nicknameUpdate,
      page: () => const NicknameUpdateScreen(),
      binding: NicknameUpdateBindings(),
    ),
  ];
}
