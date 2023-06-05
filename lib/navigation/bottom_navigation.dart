import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_challenge/service/assets.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        getNavBottomNavItem(Assets.homeNavIconSVG, "home"),
        getNavBottomNavItem(Assets.chatNavIconSVG, "chat"),
        getNavBottomNavItem(Assets.notificationNavIconSVG, "notification"),
        getNavBottomNavItem(Assets.calendarNavIconSVG, "calender")
      ],
      currentIndex: 0,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.deepPurple,
      elevation: 0,
    );
  }

  BottomNavigationBarItem getNavBottomNavItem(String icon, String label) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(icon, height: 20),
      label: label,
    );
  }
}
