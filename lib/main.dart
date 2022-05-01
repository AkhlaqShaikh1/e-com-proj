import 'package:flutter/material.dart';

import 'pages/login_page.dart';
import 'pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerece Demo',
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      routes: {
        // "/": (context) => const LoginPage(),
        LoginPage.id: (context) => const LoginPage(),
        RegisterPage.id: (context) => const RegisterPage()
      },
    );
  }
}
