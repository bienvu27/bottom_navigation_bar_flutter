import 'package:bottom_navigation_bar/pages/account/account_page.dart';
import 'package:bottom_navigation_bar/pages/alerts/alerts_page.dart';
import 'package:bottom_navigation_bar/pages/home/home_page.dart';
import 'package:bottom_navigation_bar/pages/news/news_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dashboard_controller.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: const [
              HomePage(),
              NewsPage(),
              AlertsPage(),
              AccountPage(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          child: const Icon(Icons.add, color: Colors.black),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.redAccent,
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: [
            _bottomNavigationBarItem(icon: CupertinoIcons.home, label: 'Home'),
            _bottomNavigationBarItem(icon: CupertinoIcons.news, label: 'News'),
            _bottomNavigationBarItem(icon: CupertinoIcons.bell, label: 'Alers'),
            _bottomNavigationBarItem(
                icon: CupertinoIcons.person, label: 'Account'),
          ],
        ),
      );
    });
  }

  _bottomNavigationBarItem({IconData? icon, String? label}) {
    return BottomNavigationBarItem(
        icon: Icon(
          icon,
        ),
        label: label);
  }
}
