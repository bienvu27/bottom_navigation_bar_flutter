import 'package:bottom_navigation_bar/pages/home/home_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'Home Page',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
