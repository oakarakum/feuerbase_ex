import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../../shared/services/firestore_service.dart';

class BlogController extends GetxController {
  String title = "";
  String topic = "";
  FireStoreService blog = FireStoreService();

  Future addBlogTitle(String title, String topic) async {
    await FirebaseFirestore.instance
        .collection('blog')
        .add({"Title": title, "Topic": topic});
  }
}
