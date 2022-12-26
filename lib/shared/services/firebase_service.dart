import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:feuerbase_ex/modules/blog_writing.dart/blog_controller.dart';
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
