import 'package:flutter/material.dart';
import 'package:wallet/inject.dart';
import 'package:wallet/features/graph/presentation/Pages/login.dart';
import 'features/graph/presentation/Pages/home_page.dart';

void main() {
  Inject.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}
