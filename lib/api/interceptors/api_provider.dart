import 'package:feuerbase_ex/api/base_provider.dart';
import 'package:get/get.dart';

class ApiProvider extends BaseProvider {
  Future<Response> urlPost(String path, Object data) {
    return post(path, data); //post komutu get connect'ten geliyor.
  }

  Future<Response> urlGet(String path, Object data) {
    //url alma
    return get(path); //get komutu get connect'ten geliyor.
  }
  //update metodu da eklenebilir.
}
