import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promilo_app/presentation/theme/theme.dart';
import 'home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeScreenController screenController = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Individual MeetUp"),
      ),
      body: ListView(),
    );
  }
}
