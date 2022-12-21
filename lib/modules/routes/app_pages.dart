import 'package:feuerbase_ex/modules/login/login_binding.dart';
import 'package:feuerbase_ex/modules/login/login_screen.dart';
import 'package:feuerbase_ex/modules/register/register_binding.dart';
import 'package:feuerbase_ex/modules/register/register_screen.dart';
import 'package:get/get.dart';
part 'app_routes.dart';
//part of 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
        name: Routes.REGISTER,
        page: () => RegisterScreen(),
        binding: RegisterBinding()),
    GetPage(
      name: Routes.SPLASH,
      page: () => LoginScreen(),
    ),
  ];
}
