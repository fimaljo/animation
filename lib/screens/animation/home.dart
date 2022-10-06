import 'package:animation/widgets/dely.dart';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(120.0),
      child: Column(
        children: [
          TweenAnimationBuilder<double>(
            duration: const Duration(milliseconds: 600),
            curve: Curves.bounceInOut,
            tween: Tween(begin: 1.0, end: 0.0),
            builder: (context, double value, Widget? child) {
              return Transform.translate(
                offset: Offset(-value * 140.0, value * 140.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "ddddds",
                  ),
                ),
                // child: Container(
                //   height: 100,
                //   width: 100,
                //   color: Colors.red,
                // ),
              );
            },
          ),
          DelayedAnimation(
            delay: 500,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
          )
        ],
      ),
    ));
  }
}
