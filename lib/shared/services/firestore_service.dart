import 'package:cloud_firestore/cloud_firestore.dart';
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

  //Döküman silme
  void deleteBlog(id) {
    FirebaseFirestore.instance.collection("blog").doc(id).delete();
  }

  //Update
  void updateBlog(id, title, topic) {
    var updating = FirebaseFirestore.instance.collection("blog").doc(id);
    updating.update({"Title": title, "Topic": topic});
    Get.back();
  }
}
