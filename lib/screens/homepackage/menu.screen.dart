import 'dart:async';

import 'package:animation/screens/articles/articles.dart';
import 'package:animation/screens/articles/articles.screen.dart';
import 'package:animation/screens/articles/test.dart';
import 'package:animation/screens/articles/testtwo.dart';
import 'package:animation/screens/events/all.events.dart';
import 'package:animation/screens/events/all_events_two.dart';
import 'package:animation/screens/events/events_screen.dart';
import 'package:animation/screens/profile/profile.dart';
import 'package:animation/utils/colors.dart';
import 'package:animation/widgets/dely.dart';
import 'package:animation/widgets/slide_transition.dart';
import 'package:animation/widgets/transaition.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart%20';

import '../../database/event.controller.dart';

// var key = UniqueKey();

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  // var key = UniqueKey();
  Widget build(BuildContext context) {
    final budgetViewModel = Provider.of<EventController>(context, listen: true);
    return SafeArea(
      key: budgetViewModel.key,
      child: Scaffold(
        backgroundColor: secondary,
        body: Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TweenAnimationBuilder(
                  tween: Tween(begin: 1.0, end: 0.0),
                  duration: const Duration(milliseconds: 1000),
                  builder: (context, double value, Widget? child) {
                    return Transform.translate(
                      offset: Offset(-value * 300, value * 100),
                      child: Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "inunity",
                          style: TextStyle(fontSize: 32, color: Colors.white),
                        ),
                      ),
                    );
                  }),
              const SizedBox(
                height: 70,
              ),
              SlideAnimation(
                delay: 400,
                child: ListTile(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const ProfileScreen();
                    }));
                  },
                  title: const Text(
                    "Profile",
                    style: const TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  leading: SvgPicture.asset(
                    "assets/User Profile.svg",
                  ),
                ),
              ),
              SlideAnimation(
                delay: 500,
                child: ListTile(
                  onTap: () {},
                  title: const Text(
                    "Leaderboard",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  leading: SvgPicture.asset("assets/leaderboard icon.svg"),
                ),
              ),
              SlideAnimation(
                delay: 600,
                child: ListTile(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return EventsScreen();
                    }));
                  },
                  title: const Text(
                    "Events",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  leading: SvgPicture.asset("assets/Event Icon.svg"),
                ),
              ),
              SlideAnimation(
                delay: 700,
                child: ListTile(
                  onTap: () {},
                  title: const Text(
                    "Internships",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  leading: SvgPicture.asset("assets/Internship icon.svg"),
                ),
              ),
              SlideAnimation(
                delay: 800,
                child: ListTile(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return ArticlePage();
                    }));
                  },
                  title: Text(
                    "Articles",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  leading: SvgPicture.asset("assets/ph_article-light.svg"),
                ),
              ),
              SlideAnimation(
                delay: 900,
                child: ListTile(
                  onTap: () {},
                  title: const Text(
                    "Settings",
                    style: const TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  leading: SvgPicture.asset("assets/Settings icon.svg"),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              SlideAnimation(
                delay: 1000,
                child: ListTile(
                  onTap: () {},
                  title: const Text(
                    "Logout",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  leading: const Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  // leading: SvgPicture.asset("assets/Settings icon.svg"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
