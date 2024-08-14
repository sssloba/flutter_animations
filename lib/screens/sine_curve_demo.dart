import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animations/widgets/app_drawer.dart';

class SineCurveDemo extends StatefulWidget {
  const SineCurveDemo({super.key});

  @override
  State<SineCurveDemo> createState() => _SineCurveDemoState();
}

class _SineCurveDemoState extends State<SineCurveDemo> {
  double scale = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text('Sine Curve Demo'),
      ),
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      scale = scale == 1 ? 3 : 1;
                    });
                  },
                  child:
                      const Text('Tap to see animation with custom Sine Curve'),
                ),
                AnimatedContainer(
                  duration: const Duration(seconds: 3),
                  color: Colors.red,
                  height: 100 * scale,
                  width: 100 * scale,
                  curve: const SineCurve(count: 3),
                ),
              ],
            ),
            AnimatedPositioned(
              bottom: 150 * scale,
              duration: const Duration(seconds: 3),
              curve: const SineCurve(count: 3),
              child: const ColoredBox(
                color: Colors.green,
                child: SizedBox(
                  height: 100,
                  width: 100,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SineCurve extends Curve {
  final double count;

  const SineCurve({this.count = 1.0});

  @override
  double transformInternal(double t) {
    return sin(count * 2 * pi * t) * 0.5 + 0.5;
  }
}
