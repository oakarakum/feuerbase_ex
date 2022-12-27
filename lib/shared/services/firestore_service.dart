import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:feuerbase_ex/modules/blog_writing.dart/blog_controller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FireStoreService extends GetxService {
  Future<FireStoreService> init() async {
    return this;
  }

  //Veri ekleme
  addBlog(title, topic) async {
    Map<String, dynamic> blogValue = {"Title": title, "Topic": topic};

    FirebaseFirestore.instance.collection("blog").add(blogValue);
    // 2. yöntem
/*     CollectionReference collectionReference =
        FirebaseFirestore.instance.collection("blog");
        collectionReference.add(blogValue); */
  }

  //Veri okuma
  Stream<QuerySnapshot> readBlog() {
    var ref = FirebaseFirestore.instance.collection("blog").snapshots();
    return ref;
  }
}
