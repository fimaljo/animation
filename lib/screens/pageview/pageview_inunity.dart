import 'package:animation/screens/pageview/screen/blog.page.dart';
import 'package:animation/screens/pageview/screen/community.page.dart';
import 'package:animation/screens/pageview/screen/events.page.dart';
import 'package:animation/screens/pageview/screen/leaderboard.page.dart';
import 'package:animation/screens/pageview/screen/learn.page.dart';
import 'package:animation/screens/pageview/screen/welcome.page.dart';
import 'package:animation/utils/colors.dart';
import 'package:coast/coast.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewHome extends StatefulWidget {
  const PageViewHome({Key? key}) : super(key: key);

  @override
  State<PageViewHome> createState() => _PageViewHomeState();
}

class _PageViewHomeState extends State<PageViewHome> {
  // final _beaches = [
  //   Beach(builder: (context) => LearnPage()),
  //   Beach(builder: (context) => BlogPage()),
  //   Beach(builder: (context) => CommunityPage()),
  //   Beach(builder: (context) => LeaderBoardPage()),
  //   Beach(builder: (context) => EventsPage()),
  //   Beach(builder: (context) => WelcomePage()),
  // ];
  // final _coastController = CoastController();
  final _pageViewController = PageController();
  @override
  void dispose() {
    _pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      //  resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: 750,
            child: PageView(
              controller: _pageViewController,
              children: const [
                LearnPage(),
                BlogPage(),
                CommunityPage(),
                LeaderBoardPage(),
                EventsPage(),
                // WelcomePage()
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SmoothPageIndicator(
            controller: _pageViewController,
            count: 5,
            effect: JumpingDotEffect(
                verticalOffset: 20.0,
                activeDotColor: secondary,
                dotColor: secondarylight,
                dotWidth: 10,
                dotHeight: 10),
          )
        ],
      ),
    );
  }
}
