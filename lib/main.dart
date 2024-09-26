import 'package:flutter/material.dart';
import 'package:koombea/domain/user_provider.dart';
import 'package:koombea/presentation/pages/user_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Koombea Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: ChangeNotifierProvider(
        create: (_) => UserProvider(),
        child: const UserPage(),
      ),
    );
  }
}
