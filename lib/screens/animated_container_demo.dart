import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animations/widgets/app_drawer.dart';

class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({super.key});

  @override
  State<AnimatedContainerDemo> createState() => _AnimatedContainerDemoState();
}

int scaleFactor = 1;

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text('Animated Container Demo'),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Press "Animate" button to see animation'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () =>
                    setState(() => scaleFactor = Random().nextInt(10) + 1),
                child: const Text('Animate')),
          ),
          Expanded(
            child: Center(
              child: AnimatedContainer(
                duration: Duration(
                  milliseconds: scaleFactor * 200,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Colors.primaries[scaleFactor],
                      Colors.primaries[scaleFactor + 7],
                      Colors.accents[scaleFactor + 5],
                    ],
                    stops: const [
                      0.2,
                      0.5,
                      0.7,
                    ],
                  ),
                ),
                height: scaleFactor * 60,
                width: scaleFactor * 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
