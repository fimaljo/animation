import 'dart:async';

import 'package:flutter/material.dart';

class SlideAnimation extends StatefulWidget {
  final Widget child;
  final int delay;

  SlideAnimation({required this.child, this.delay = 1000});

  @override
  _SlideAnimationState createState() => _SlideAnimationState();
}

class _SlideAnimationState extends State<SlideAnimation>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animOffset;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));

    final curve =
        CurvedAnimation(curve: Curves.decelerate, parent: _controller);
    _animOffset =
        Tween<Offset>(begin: const Offset(-35.0, 0.35), end: Offset.zero)
            .animate(curve);

    if (widget.delay == null) {
      _controller.forward();
    } else {
      Timer(Duration(milliseconds: widget.delay), () {
        if (mounted) {
          _controller.forward();
        }
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animOffset,
      child: widget.child,
    );
  }
}
