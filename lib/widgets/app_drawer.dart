import 'package:flutter/material.dart';
import 'package:flutter_animations/screens/animated_container_demo.dart';
import 'package:flutter_animations/screens/home_page.dart';
import 'package:flutter_animations/widgets/drawer_tile.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerTile('Home Page', HomePage()),
          DrawerTile('Animated Container Demo', AnimatedContainerDemo())
        ],
      ),
    );
  }
}
