import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'splash_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Authentication Manager',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: SplashView(),
    );
  }
}
