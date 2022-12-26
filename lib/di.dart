import 'package:feuerbase_ex/shared/services/auth_service.dart';
import 'package:feuerbase_ex/shared/services/firebase_service.dart';
import 'package:feuerbase_ex/shared/services/firestore_service.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static init() async {
    await Get.putAsync(() => FirebaseService()
        .init()); //Sıralaması önemli çünkü firebase'in core'unun önce gelmesi gerekiyor.
    await Get.putAsync(() => AuthService()
        .init()); // auth sonra gelir çünkü önce önce firebase servislerinin gelmesi gerekiyor.
    await Get.putAsync(() => FireStoreService().init());
  }
}
