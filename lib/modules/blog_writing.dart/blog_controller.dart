import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../shared/services/firestore_service.dart';

class BlogController extends GetxController {
  TextEditingController title = TextEditingController();
  TextEditingController topic = TextEditingController();
  FireStoreService storage = FireStoreService();
}
