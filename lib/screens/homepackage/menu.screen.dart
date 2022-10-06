import 'package:animation/screens/articles/articles.dart';
import 'package:animation/screens/articles/articles.screen.dart';
import 'package:animation/screens/articles/test.dart';
import 'package:animation/screens/articles/testtwo.dart';
import 'package:animation/screens/profile/profile.dart';
import 'package:animation/utils/colors.dart';
import 'package:animation/widgets/transaition.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: secondary,
        body: Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "inunity",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const ProfileScreen();
                  }));
                },
                title: const Text(
                  "Profile",
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                ),
                leading: SvgPicture.asset(
                  "assets/User Profile.svg",
                ),
              ),
              ListTile(
                onTap: () {},
                title: const Text(
                  "Leaderboard",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                leading: SvgPicture.asset("assets/leaderboard icon.svg"),
              ),
              ListTile(
                onTap: () {},
                title: const Text(
                  "Events",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                leading: SvgPicture.asset("assets/Event Icon.svg"),
              ),
              ListTile(
                onTap: () {},
                title: const Text(
                  "Internships",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                leading: SvgPicture.asset("assets/Internship icon.svg"),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ArticlePage();
                  }));
                },
                title: Hero(
                  tag: "articles",
                  child: Text(
                    "Articles",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                leading: SvgPicture.asset("assets/ph_article-light.svg"),
              ),
              ListTile(
                onTap: () {},
                title: const Text(
                  "Settings",
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                ),
                leading: SvgPicture.asset("assets/Settings icon.svg"),
              ),
              const SizedBox(
                height: 80,
              ),
              ListTile(
                onTap: () {},
                title: const Text(
                  "Logout",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                leading: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                // leading: SvgPicture.asset("assets/Settings icon.svg"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
