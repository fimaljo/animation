import 'package:animation/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

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
              selectedIconTheme: const IconThemeData(color: yellow),
              unselectedIconTheme: const IconThemeData(color: Colors.white),
              items: [
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      "assets/Home icon.svg",
                      color: newIndex == 0 ? yellow : Colors.white,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      "assets/Learn icon.svg",
                      color: newIndex == 1 ? yellow : Colors.white,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      "assets/community icon.svg",
                      color: newIndex == 2 ? yellow : Colors.white,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon:
                        // SvgPicture.asset(
                        //   "assets/Streak fire.svg",
                        //   color: newIndex == 3 ? secondary : Colors.white,
                        // ),
                        newIndex != 3
                            ? SvgPicture.asset(
                                "assets/Streak fire.svg",
                                color: newIndex == 3 ? secondary : Colors.white,
                              )
                            : Lottie.asset("assets/115865-simple-flame.json",
                                height: 30, width: 60),
                    label: ''),
              ]);
        });
  }
}
