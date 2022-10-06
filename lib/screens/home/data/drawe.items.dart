import 'package:animation/screens/home/data/drawer.item.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DraweItems {
  static final profile = DrawerItem(
      title: "Profile", icon: SvgPicture.asset("assets/User Profile.svg"));
  static final List<DrawerItem> all = [
    profile,
  ];
}
