import 'package:flutter/material.dart';

class AnimatedContainerTuto extends StatefulWidget {
  const AnimatedContainerTuto({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerTuto> createState() => _AnimatedContainerTutoState();
}

class _AnimatedContainerTutoState extends State<AnimatedContainerTuto> {
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
        child: AnimatedContainer(
          height: selected ? 200.0 : 100.0,
          width: selected ? 100.0 : 200.0,
          duration: const Duration(seconds: 2),
          color: selected ? Colors.blueGrey : Colors.white,
          curve: Curves.fastOutSlowIn,
        ),
      ),
    );
  }
}
