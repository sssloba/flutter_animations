import 'package:flutter/material.dart';
import 'package:flutter_animations/widgets/app_drawer.dart';

class AnimatedIconsDemo extends StatefulWidget {
  const AnimatedIconsDemo({super.key});

  @override
  State<AnimatedIconsDemo> createState() => _AnimatedIconsDemoState();
}

class _AnimatedIconsDemoState extends State<AnimatedIconsDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController animatedIconcontroller;
  bool isPlay = false;

  @override
  void initState() {
    super.initState();
    animatedIconcontroller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 400,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text('Animated Icons Demo'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            isPlay = !isPlay;
            setState(() {
              isPlay
                  ? animatedIconcontroller.forward()
                  : animatedIconcontroller.reverse();
            });
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            size: 150.0,
            progress: animatedIconcontroller,
            semanticLabel: 'Show menu',
          ),
        ),
      ),
    );
  }
}
