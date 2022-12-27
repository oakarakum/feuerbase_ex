import 'package:feuerbase_ex/modules/update_blog/update_controller.dart';
import 'package:get/get.dart';

class UpdateBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(UpdateController());
  }
}
