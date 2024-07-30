import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile(this.title, this.route, {this.onTap, super.key});

  final String title;
  final Function? onTap;
  final Widget route;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            title: Text(
              title,
              style: const TextStyle(
                color: Colors.deepPurpleAccent,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              onTap;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => route,
                ),
              );
            }),
        const Divider(
          height: 0,
          thickness: 2,
        ),
      ],
    );
  }
}
