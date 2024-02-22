import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'prolet_screen_controller.dart';

class ProletScreen extends StatelessWidget {
  const ProletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProletScreenController screenController = Get.find();
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.to(()=>Scaffold());
      },),
    );
  }
}
