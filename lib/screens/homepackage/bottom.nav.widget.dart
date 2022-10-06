import 'package:animation/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int newIndex, _) {
          return BottomNavigationBar(
              currentIndex: newIndex,
              onTap: (index) {
                indexChangeNotifier.value = index;
              },
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              backgroundColor: dark,
              unselectedItemColor: Colors.white,
              selectedItemColor: secondary,
              selectedIconTheme: const IconThemeData(color: secondary),
              unselectedIconTheme: const IconThemeData(color: Colors.white),
              items: [
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      "assets/Home icon.svg",
                      color: newIndex == 0 ? secondary : Colors.white,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      "assets/Learn icon.svg",
                      color: newIndex == 1 ? secondary : Colors.white,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      "assets/community icon.svg",
                      color: newIndex == 2 ? secondary : Colors.white,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      "assets/Streak fire.svg",
                      color: newIndex == 3 ? secondary : Colors.white,
                    ),
                    label: ''),
              ]);
        });
  }
}
