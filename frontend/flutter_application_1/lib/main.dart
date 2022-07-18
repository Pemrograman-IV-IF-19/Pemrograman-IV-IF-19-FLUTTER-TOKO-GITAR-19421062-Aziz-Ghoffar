import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/login.dart';
import 'package:flutter_application_1/ui/startup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Penjualan Masker',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        debugShowCheckedModeBanner: false,
        home: StartUp());
  }
}
