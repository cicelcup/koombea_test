import 'package:koombea/data/model/user.dart';
import 'package:dio/dio.dart';

class UserService {
  Future<List<User>?> fetchUsers() async {
    final dio = Dio();
    final response = await dio.get('https://dart.dev');

    if (response.statusCode == 200) {
      return [];
    } else {
      return null;
    }
  }
}
