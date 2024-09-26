import 'package:koombea/data/model/user.dart';
import 'package:dio/dio.dart';

class UserService {
  Future<List<User>> fetchUsers() async {
    final dio = Dio();
    final response = await dio.get('https://jserver-api.herokuapp.com/users');
    if (response.statusCode == 200) {
      return ((response.data) as List<dynamic>).map((element) => User.fromJson(element)).toList();
    } else {
      return [];
    }
  }
}
