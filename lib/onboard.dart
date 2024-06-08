import 'package:auth/core/authentication_manager.dart';
import 'package:auth/home_view.dart';
import 'package:auth/login/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    AuthenticationManager authManager = Get.find();

    return Obx(() {
      return authManager.isLogged.value ? const HomeView() : const LoginView();
    });
  }
}
