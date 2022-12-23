import 'package:feuerbase_ex/modules/blog_writing.dart/blog_controller.dart';
import 'package:get/get.dart';

class BlogBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(BlogController());
  }
}
