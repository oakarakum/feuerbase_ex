import 'package:feuerbase_ex/shared/services/firestore_service.dart';
import 'package:get/get.dart';

import '../../shared/services/analytics_services.dart';

class UpdateController extends GetxController {
  FireStoreService upToDate = FireStoreService();
  AnalyticsService analyticsService = AnalyticsService();
}
