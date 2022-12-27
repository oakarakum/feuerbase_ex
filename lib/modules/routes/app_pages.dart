// ignore_for_file: constant_identifier_names

import 'package:feuerbase_ex/modules/blog_writing.dart/blog_binding.dart';
import 'package:feuerbase_ex/modules/blog_writing.dart/blog_screen.dart';
import 'package:feuerbase_ex/modules/homepage/homepage_binding.dart';
import 'package:feuerbase_ex/modules/homepage/homepage_screen.dart';
import 'package:feuerbase_ex/modules/login/login_binding.dart';
import 'package:feuerbase_ex/modules/login/login_screen.dart';
import 'package:feuerbase_ex/modules/register/register_binding.dart';
import 'package:feuerbase_ex/modules/register/register_screen.dart';
import 'package:feuerbase_ex/modules/splash/splash_binding.dart';
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
        binding: SplashBinding()),
    GetPage(
        name: Routes.HOME,
        page: () => HomepageScreen(),
        binding: HomepageBinding()),
    GetPage(
      name: Routes.BLOG,
      page: () => BlogScreen(),
      binding: BlogBinding(),
    ),
  ];
}
