import 'package:feuerbase_ex/modules/login/login_screen.dart';
import 'package:get/get.dart';
part 'app_routes.dart';
//part of 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: Routes.SPLASH,
      page: () => LoginScreen(),
    ),
  ];
}
