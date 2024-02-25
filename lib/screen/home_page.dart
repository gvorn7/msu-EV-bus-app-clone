import 'package:flutter/material.dart';
import 'package:flutter_login_form/pages/bus_location.dart';
import 'package:flutter_login_form/pages/notif_bus.dart';
import 'package:flutter_login_form/pages/setting_page.dart';

class HomeePage extends StatefulWidget {
  const HomeePage({super.key});

  @override
  State<HomeePage> createState() => _HomeePageState();
}

class _HomeePageState extends State<HomeePage> {
  int index = 0;
  final screens = [
    const LocationBusPage(),
    const BusNOtificationList(),
    const SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: Colors.amber.shade200,
            labelTextStyle: MaterialStateProperty.all(
                const TextStyle(fontSize: 12, fontWeight: FontWeight.w500))),
        child: NavigationBar(
          
          // backgroundColor: Colors.white,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          height: 65,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.pin_drop), selectedIcon: Icon(Icons.pin_drop_outlined),
              label: "Bus Map"),
            NavigationDestination(
                icon: Icon(Icons.campaign), selectedIcon: Icon(Icons.campaign_outlined),
                label: "Notification"),
            NavigationDestination(
                icon: Icon(Icons.directions_bus), selectedIcon: Icon(Icons.directions_bus_outlined),
                label: "More"),
          ],
        ),
      ),
    );
  }
}
