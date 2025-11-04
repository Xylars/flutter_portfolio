import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/login.dart';

void main() async {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      theme: ThemeData(useMaterial3: false, primarySwatch: Colors.blue),
      home: const LoginPage(),
    );
  }
}
