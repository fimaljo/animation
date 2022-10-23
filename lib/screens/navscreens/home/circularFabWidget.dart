import 'dart:math';

import 'package:animation/screens/navscreens/home/notification.screen.dart';
import 'package:animation/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

final double buttonSize = 50;

class CircularFabWidget extends StatefulWidget {
  const CircularFabWidget({Key? key}) : super(key: key);

  @override
  State<CircularFabWidget> createState() => _CircularFabWidgetState();
}

class _CircularFabWidgetState extends State<CircularFabWidget>
    with TickerProviderStateMixin {
  //bool _isplay = false;
  // late AnimationController _animationController;
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
    // _animationController =
    //     AnimationController(duration: const Duration(seconds: 1), vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    // _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Flow(
      delegate: FlowMenuDelegate(controller: controller),
      children: [
        Icons.notifications_active_outlined,
        Icons.create_new_folder,
        Icons.article,
        Icons.mail,
        Icons.menu,
        // AnimatedIcon(
        //     icon: AnimatedIcons.close_menu, progress: _animationController)
      ].map<Widget>(buildFab).toList(),
    );
  }

  Widget buildFab(icon) {
    return SizedBox(
      width: buttonSize,
      height: buttonSize,
      child: FloatingActionButton(
        backgroundColor: primary,
        elevation: 0,
        splashColor: secondary,
        child: Icon(
          icon,
          color: secondary,
        ),
        onPressed: () {
          if (controller.status == AnimationStatus.completed) {
            controller.reverse();
          } else {
            controller.forward();
          }
          // if (_isplay == false) {
          //   _animationController.forward();
          //   _isplay = true;
          // } else {
          //   _animationController.reverse();
          //   _isplay = false;
          // }
          if (icon == Icons.notifications_active_outlined) {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return NotificationScreen();
            }));
          }
        },
      ),
    );
  }
}

class FlowMenuDelegate extends FlowDelegate {
  final Animation<double> controller;
  const FlowMenuDelegate({required this.controller})
      : super(repaint: controller);
  @override
  void paintChildren(FlowPaintingContext context) {
    final size = context.size;
    final xStart = size.width - 50;
    final yStart = size.height - 50;
    final n = context.childCount;
    for (int i = 0; i < n; i++) {
      final isLastItem = i == context.childCount - 1;
      final setValue = (value) => isLastItem ? 0.0 : value;
      final radius = 150 * controller.value;
      final theta = i * pi * 0.5 / (n - 2);
      final x = xStart - setValue(radius * cos(theta));
      final y = yStart - setValue(radius * sin(theta));

      context.paintChild(i,
          transform: Matrix4.identity()
            ..translate(x, y, 0)
            ..translate(buttonSize / 2, buttonSize / 2)
            ..rotateZ(
                isLastItem ? 0.0 : 180 * (1 - controller.value) * pi / 180)
            ..scale(isLastItem ? 1.0 : max(controller.value, 0.5))
            ..translate(-buttonSize / 2, -buttonSize / 2));
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) => false;
}
