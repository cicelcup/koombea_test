import 'package:flutter/material.dart';
import 'package:koombea/data/model/user.dart';
import 'package:koombea/presentation/components/user_item.dart';

class UserList extends StatelessWidget {
  const UserList({super.key, required this.list});

  final List<User> list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        var user = list[index];
        return UserItem(
          user: user,
        );
      },
    );
  }
}
