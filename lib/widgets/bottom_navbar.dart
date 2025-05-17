import 'package:fleetwise/view/home/home_page.dart';
import 'package:fleetwise/view/index_stack/index_stack.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class BottomNavControl extends StatefulWidget {
  const BottomNavControl({super.key});

  @override
  State<BottomNavControl> createState() => _BottomNavControlState();
}

class _BottomNavControlState extends State<BottomNavControl> {
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [
      const MainSection(),
      const PageSwitcher(),
      Container(
        color: Colors.blue,
        child: const Center(
          child: Text(
            'Add',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ),
      Container(
          color: Colors.amber,
          child: const Center(
              child: Text('Notifications',
                  style: TextStyle(color: Colors.white, fontSize: 30)))),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: _buildIcon(Icons.home, 0),
        title: "Home",
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: _buildIcon(Icons.fire_truck_outlined, 1),
        title: "Vehicles",
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: _buildIcon(Icons.car_repair, 2),
        title: "Drivers",
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: _buildIcon(Icons.person, 3),
        title: "Acoount",
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  Widget _buildIcon(IconData iconData, int index) {
    return Icon(iconData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        navBarStyle: NavBarStyle.style3,
      ),
    );
  }
}
