import 'package:feuerbase_ex/shared/services/firestore_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../shared/services/analytics_services.dart';

class UpdateController extends GetxController {
  String document_id = "";

  FireStoreService upToDate = FireStoreService();
  AnalyticsService analyticsService = AnalyticsService();
  TextEditingController updateTitle = TextEditingController();
  TextEditingController updateTopic = TextEditingController();
}
