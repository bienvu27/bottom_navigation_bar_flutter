import 'package:bottom_navigation_bar/pages/news/news_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class NewsPage extends GetView<NewsController> {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'News Page',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
