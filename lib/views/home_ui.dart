import 'package:flutter/material.dart';

import 'package:motor_show_2024_app/views/calculate_ui.dart';
import 'package:motor_show_2024_app/views/honda_ui.dart';
import 'package:motor_show_2024_app/views/mazda_ui.dart';
import 'package:motor_show_2024_app/views/mitsubishi_ui.dart';
import 'package:motor_show_2024_app/views/toyota_ui.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  int _currentIndex = 2;

  final List<String> _assetPaths = [
    'assets/images/tyt_tab.png',
    'assets/images/honda_tab.png',
    'assets/images/calculate.png',
    'assets/images/mitsubi_tab.png',
    'assets/images/mazda_tab.png',
  ];

  List<PersistentBottomNavBarItem> _navBarsItems() {
    final double iconSize = 30.0;

    assert(_assetPaths.length == 5);
    return List.generate(_assetPaths.length, (index) {
      return PersistentBottomNavBarItem(
        icon: Image.asset(
          _assetPaths[index],
          width: iconSize,
          height: iconSize,
          colorBlendMode: BlendMode.srcIn,
        ),
      );
    });
  }

  List<Widget> _buildScreens() {
    return [
      ToyotaUI(),
      HondaUI(),
      CalculateUI(),
      MitsubushiUI(),
      MazdaUI(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PersistentTabView(
        context,
        controller: PersistentTabController(initialIndex: _currentIndex),
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        navBarStyle: NavBarStyle.style6,
        hideNavigationBarWhenKeyboardShows: true,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
      ),
    );
  }
}
