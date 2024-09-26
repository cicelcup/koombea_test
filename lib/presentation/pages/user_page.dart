import 'package:flutter/material.dart';
import 'package:koombea/data/model/user.dart';
import 'package:koombea/domain/user_provider.dart';
import 'package:koombea/presentation/components/user_list.dart';
import 'package:provider/provider.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  late final Future<List<User>> future;

  @override
  void didChangeDependencies() {
    future = Provider.of<UserProvider>(context, listen: false).fetchUsers();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Koombea Test'),
      ),
      body: FutureBuilder(
        future: future,
        builder: (_, snap) {
          if (snap.hasError) {
            return const Text('Hubo un error');
          }

          if (snap.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }

          return UserList(list: snap.data ?? []);
        },
      ),
    );
  }
}
