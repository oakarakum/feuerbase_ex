import 'package:feuerbase_ex/shared/service/firebase_service.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static init() async {
    await Get.putAsync(() => FirebaseService().init());
  }
}
