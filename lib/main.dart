import 'package:flutter/material.dart';
import 'package:flutter_animations/screens/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.amber,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.amberAccent),
        drawerTheme: const DrawerThemeData(backgroundColor: Colors.amber),
      ),
      title: 'Flutter Animations',
      home: const HomePage(),
    );
  }
}
