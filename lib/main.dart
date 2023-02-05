import 'package:flutter/material.dart';
import 'package:log_in_flutter/src/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Bookish_App',
      home: MyLogIn(),
    );
  }
}
