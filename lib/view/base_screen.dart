import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:trash_reminder/view/home_page.dart';
import 'package:trash_reminder/view/resister_page.dart';
import 'package:trash_reminder/view/setting_page.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final PersistentTabController _controller = PersistentTabController(initialIndex: 1);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: PersistentTabView(
        context,
        controller: _controller,
        screens: _screens,
        items: _navBarsItems(),
        navBarStyle: NavBarStyle.style6,
      ),
    );
  }

  List<Widget> _screens = [
    ResisterPage(),
    HomePage(),
    SettingPage(),
  ];

  List<PersistentBottomNavBarItem> _navBarsItems() => [
        _navBarItem(
          icon: Icon(Icons.two_wheeler),
          title: "Resister",
        ),
        _navBarItem(
          icon: Icon(Icons.home),
          title: "Home",
        ),
        _navBarItem(
          icon: Icon(Icons.settings),
          title: "Settings",
        ),
      ];

  PersistentBottomNavBarItem _navBarItem({
    required Widget icon,
    required String title,
  }) {
    return PersistentBottomNavBarItem(
      icon: icon,
      title: title,
      activeColorPrimary: Colors.orangeAccent,
      inactiveColorPrimary: Colors.grey,
    );
  }
}
