import 'package:feuerbase_ex/shared/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_pages.dart';

class RegisterController extends GetxController {
  RxBool registerVisibilityVariable = true.obs;
  String email = "";
  String password = "";
  AuthService register = AuthService();

  void returnToLogin() {
    Get.toNamed(Routes.LOGIN);
  }

  void registerVisible() {
    registerVisibilityVariable.value = !registerVisibilityVariable.value;
  }

  registerVisiblityIcon() {
    if (registerVisibilityVariable == false) {
      return Icons.visibility;
    } else {
      return Icons.visibility_off;
    }
  }
}
