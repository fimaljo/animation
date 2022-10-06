import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnimatedAlignTuto extends StatefulWidget {
  const AnimatedAlignTuto({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignTuto> createState() => _AnimatedAlignTutoState();
}

class _AnimatedAlignTutoState extends State<AnimatedAlignTuto> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          width: double.infinity,
          height: 250,
          color: Colors.red,
          child: AnimatedAlign(
            alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
            duration: Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(
              size: 50.0,
            ),
          ),
        ),
      ),
    );
  }
}
