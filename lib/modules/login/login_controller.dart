import 'package:feuerbase_ex/modules/register/register_screen.dart';
import 'package:get/get.dart';

import '../routes/app_pages.dart';

class LoginController extends GetxController {
  
  void pageChanger(){
    Get.to(() => RegisterScreen());
    Get.toNamed(Routes.REGISTER);
  }
}