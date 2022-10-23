import 'package:animation/screens/homepackage/mainhome.dart';
import 'package:animation/screens/homepackage/menu.screen.dart';
import 'package:animation/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  final zoomDrawerController = ZoomDrawerController();
  final zoomController = ZoomDrawerController();
  // void test() {
  //   zoomController.stateNotifier.addListener(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: zoomDrawerController,
      menuScreen: const MenuScreen(),
      mainScreen: const MainHome(),
      // clipMainScreen: false,
      borderRadius: 24.0,
      showShadow: true,
      menuBackgroundColor: secondary,
      mainScreenTapClose: true,
      angle: .0,
      slideWidth: MediaQuery.of(context).size.width * .7,
      openCurve: Curves.easeIn,
      duration: const Duration(milliseconds: 800),
      reverseDuration: const Duration(seconds: 5),
      closeCurve: Curves.easeOut,
    );
  }
}
