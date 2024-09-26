import 'package:koombea/data/model/user.dart';
import 'package:koombea/data/service/user_service.dart';

class UserRepository {
  Future<List<User>?> fetchUsers() async {
    var userService = UserService();
    return await userService.fetchUsers();
  }
}
