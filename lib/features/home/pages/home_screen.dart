import 'package:companion_app/features/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),

      body: Center(
        child: Text(
          'Welcome Home',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}
