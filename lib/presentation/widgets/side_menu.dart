import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {
        setState(() {
          navDrawerIndex = value;
        });
      },
      children: [
        NavigationDrawerDestination(
          icon: const Icon(Icons.home_max_outlined),
          label: Text('Home'),
        ),
        NavigationDrawerDestination(
          icon: const Icon(Icons.settings),
          label: Text('settings'),
        ),
        NavigationDrawerDestination(
          icon: const Icon(Icons.info),
          label: Text('about'),
        ),
      ],
    );
  }
}
