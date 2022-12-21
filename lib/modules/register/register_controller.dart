import 'package:get/get.dart';

import '../routes/app_pages.dart';

class RegisterController extends GetxController {
  void returnToLogin() {
    Get.toNamed(Routes.LOGIN);
  }
}
