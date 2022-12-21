import 'package:feuerbase_ex/modules/register/register_screen.dart';
import 'package:get/get.dart';

import '../routes/app_pages.dart';

class LoginController extends GetxController {
  var isPasswordHidden = true.obs;
  void pageChanger() {
    // Get.to(() => RegisterScreen());
    Get.toNamed(Routes.REGISTER);
  }

  void visible() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }
}
