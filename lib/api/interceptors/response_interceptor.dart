import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';
import 'package:get/get_connect/http/src/response/response.dart';

//status kodunu yazdırma,kullanıcı adı bulunamadı
//ya da api 'dan gelen cevapları not ettğimiz yer

FutureOr<dynamic> responseInterceptor(
    Request request, Response response) async {
  if (response.statusCode != 200) {
    handleErrorStatus(response);
    return;
  }
}

void handleErrorStatus(Response response) {
  switch (response.statusCode) {
    case 400:
      break;
  }
  return;
}
