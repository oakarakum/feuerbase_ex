import 'package:feuerbase_ex/modules/login/login_controller.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(LoginController(apiRepository: Get.find()));
    // Get.lazyPut<LoginController>(() => LoginController());
  }
}
