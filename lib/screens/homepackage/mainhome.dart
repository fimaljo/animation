import 'package:animation/screens/homepackage/bottom.nav.widget.dart';
import 'package:animation/screens/navscreens/community/community.dart';
import 'package:animation/screens/navscreens/home.dart';
import 'package:animation/screens/navscreens/learn/learn.dart';
import 'package:animation/screens/navscreens/streak/streak.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  final _pages = [
    HomeScreen(),
    LearnScreen(),
    CommunityScreen(),
    StreakScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (context, int index, _) {
              return _pages[index];
            }),
        bottomNavigationBar: BottomNavigationWidget(),
      ),
    );
  }
}
