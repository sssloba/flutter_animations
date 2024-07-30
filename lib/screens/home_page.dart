import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Animations',
          style: TextStyle(
            fontSize: 32.0,
            color: Colors.blue,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Flutter Animations Demo Home Page',
          style: TextStyle(
              fontSize: 32.0,
              color: Colors.green,
              fontWeight: FontWeight.w600,
              height: 1.8),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}