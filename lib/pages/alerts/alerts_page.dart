import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'alerts_controller.dart';

class AlertsPage extends GetView<AlertsController> {
  const AlertsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'Alerts Page',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
