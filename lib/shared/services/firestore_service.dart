import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:feuerbase_ex/modules/blog_writing.dart/blog_controller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FireStoreService extends GetxService {
  Future<FireStoreService> init() async {
    return this;
  }

  addBlog() async {
    var adding =
        await FirebaseFirestore.instance.collection('blog').doc('my_blog');
    final json = {
      'title': 'blog5',
      'topic': 21,
    };

    await adding.set(json);
  }
}
