import 'package:flutter/cupertino.dart';
import 'package:koombea/data/model/user.dart';
import 'package:koombea/data/repository/user_repository.dart';

class UserProvider extends ChangeNotifier {
  Future<List<User>> fetchUsers() async {
    var repository = UserRepository();
    return repository.fetchUsers();
  }
}
