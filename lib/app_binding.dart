import 'package:feuerbase_ex/api/api_provider.dart';
import 'package:feuerbase_ex/api/api_repository.dart';
import 'package:get/get.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ApiProvider(),
        permanent:
            true); //perman ent late gibi davranır istediği zaman devreye alır.
    Get.put(ApiRepository(apiProvider: Get.find()), permanent: true);
  }
}
