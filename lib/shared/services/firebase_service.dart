import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

import '../../firebase_options.dart';

class FirebaseService extends GetxService {
  Future<FirebaseService> init() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    return this;
  }
}
