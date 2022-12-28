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
import 'package:feuerbase_ex/modules/splash/splash_screen.dart';
import 'package:feuerbase_ex/modules/update_blog/update_binding.dart';
import 'package:feuerbase_ex/modules/update_blog/update_controller.dart';
import 'package:feuerbase_ex/modules/update_blog/update_screen.dart';
import 'package:get/get.dart';
part 'app_routes.dart';
//part of 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
        name: Routes.REGISTER,
        page: () => const RegisterScreen(),
        binding: RegisterBinding()),
    GetPage(
        name: Routes.SPLASH,
        page: () => const SplashScreen(),
        binding: SplashBinding()),
    GetPage(
        name: Routes.HOME,
        page: () => const HomepageScreen(),
        binding: HomepageBinding()),
    GetPage(
      name: Routes.BLOG,
      page: () => const BlogScreen(),
      binding: BlogBinding(),
    ),
    GetPage(
        name: Routes.UPDATE,
        page: () => UpdateScreen(),
        binding: UpdateBinding())
  ];
}
