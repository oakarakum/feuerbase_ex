// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import '../routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onReady() async {
    await Future.delayed(Duration(milliseconds: 1000));
    Get.toNamed(Routes.LOGIN);
    super.onReady();
  }
}
