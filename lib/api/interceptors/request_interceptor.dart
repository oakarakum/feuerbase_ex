import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<Request> requestInterceptor(request) async {
  request.headers["Authorization"] = "Token buraya gelecek";
  //request.headers["Content-Type"] = "asdasd";
  return request;
}
