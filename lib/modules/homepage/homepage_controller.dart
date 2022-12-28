import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:feuerbase_ex/modules/update_blog/update_controller.dart';
import 'package:feuerbase_ex/shared/services/analytics_services.dart';
import 'package:feuerbase_ex/shared/services/firestore_service.dart';
import 'package:get/get.dart';

class HomepageController extends GetxController {
  UpdateController updateController = Get.put(UpdateController());

  String document_id = "";

  FireStoreService storage =
      FireStoreService(); //Fire servisden veri almak için
  //AnalyticsService analyticsService = Get.find();
  //Stream<List<Blog>> readBlogs() =>

}
