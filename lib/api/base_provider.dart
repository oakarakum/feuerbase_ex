import 'package:feuerbase_ex/api/api_constants.dart';
import 'package:feuerbase_ex/api/interceptors/request_interceptor.dart';
import 'package:feuerbase_ex/api/interceptors/response_interceptor.dart';
import 'package:get/get.dart';

class BaseProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = ApiConstants.baseUrl;
    httpClient.addRequestModifier(requestInterceptor);
    httpClient.addResponseModifier(responseInterceptor);
  }
}
