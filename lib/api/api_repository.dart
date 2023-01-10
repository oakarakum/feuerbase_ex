import 'package:feuerbase_ex/api/api_provider.dart';

class ApiRepository {
  ApiRepository({required this.apiProvider});
  final ApiProvider apiProvider;

  //modelin yapısı buraya gelecek
  Future<dynamic> login(String email, String password) async {
    final res = await apiProvider
        .urlPost("api/login", {"email": email, "password": password});

    if (res.statusCode == 200) {
      return res.body;
    }
  }
}
