import 'package:animation/screens/articles/testtwo.dart';
import 'package:animation/screens/navscreens/home/circularFabWidget.dart';
import 'package:animation/screens/navscreens/home/notification.screen.dart';
import 'package:animation/screens/navscreens/streak/streak.dart';
import 'package:animation/screens/profile/strek.rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:provider/provider.dart';
//import 'package:provider/provider.dart%20';

import '../../../database/event.controller.dart';
import '../../../utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  // bool _isplay = false;
  // late AnimationController _animationController;
  // @override
  // void initState() {
  //   _animationController =
  //       AnimationController(duration: const Duration(seconds: 1), vsync: this);
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   _animationController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final budgetViewModel = Provider.of<EventController>(context, listen: true);
    return Scaffold(
      // floatingActionButton: CircularFabWidget(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            budgetViewModel.setNewValue();
            //  key = Key();

            if (ZoomDrawer.of(context)!.isOpen()) {
              ZoomDrawer.of(context)!.close();
            } else {
              ZoomDrawer.of(context)!.open();
            }
            // if (_isplay == false) {
            //   _animationController.forward();
            //   _isplay = true;
            // } else {
            //   _animationController.reverse();
            //   _isplay = false;
            // }
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            //AnimatedIcon(
            //   icon: AnimatedIcons.close_menu,
            //   color: Colors.black,
            //   progress: _animationController,
            //   size: 30,
            // ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return NotificationScreen();
                }));
              },
              icon: SvgPicture.asset(
                "assets/clarity_notification-line.svg",
                color: secondary,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "Hello Varun\n",
                              style: TextStyle(
                                  color: dark,
                                  fontSize: 24,
                                  height: 2,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                                text:
                                    "Complete a lesson to earn today's streak!",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      Container(
                        width: size.width / 0.3,
                        height: size.height / 12,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(46, 117, 117, 117),
                              spreadRadius: 1,
                              blurRadius: 10,
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    Text(
                                      "M",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Text(
                                      "T",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 39,
                                    ),
                                    Text(
                                      "W",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 41,
                                    ),
                                    Text(
                                      "T",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 45,
                                    ),
                                    Text(
                                      "F",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 39,
                                    ),
                                    Text(
                                      "S",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              StrekRating(rating: 1)
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 150,
                        width: size.width,
                        child: Image.asset(
                          "assets/ink-shape.png",
                          height: 50,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 5, bottom: 8),
                                child: Container(
                                  height: size.height / 8.2,
                                  width: size.width / 2.6,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: secondary,
                                        width: 1,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(48, 0, 0, 0),
                                          blurRadius: 5.0,
                                          spreadRadius: 0.0,
                                          offset: Offset(2.0,
                                              2.0), // shadow direction: bottom right
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(top: 5, left: 10),
                                        child: Text(
                                          "Learn",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 1,
                                        ),
                                        child: Image.asset(
                                          "assets/Frame 101.png",
                                          height: 50,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 5, bottom: 8),
                                child: Container(
                                  height: size.height / 8.2,
                                  width: size.width / 2.2,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: secondary,
                                        width: 1,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(48, 0, 0, 0),
                                          blurRadius: 5.0,
                                          spreadRadius: 0.0,
                                          offset: Offset(2.0,
                                              2.0), // shadow direction: bottom right
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "Streaks",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        Image.asset("assets/Frame 103 1.png"),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 5, bottom: 8),
                                child: Container(
                                  height: size.height / 8.2,
                                  width: size.width / 2.2,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: secondary,
                                        width: 1,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(48, 0, 0, 0),
                                          blurRadius: 5.0,
                                          spreadRadius: 0.0,
                                          offset: Offset(2.0,
                                              2.0), // shadow direction: bottom right
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(bottom: 66),
                                          child: Text(
                                            "Commuinity",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                        Image.asset("assets/Frame 104.png"),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 5, bottom: 8),
                                child: Container(
                                  height: size.height / 8.2,
                                  width: size.width / 2.6,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: secondary,
                                        width: 1,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(48, 0, 0, 0),
                                          blurRadius: 5.0,
                                          spreadRadius: 0.0,
                                          offset: Offset(2.0,
                                              2.0), // shadow direction: bottom right
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            bottom: 66, left: 10),
                                        child: Text(
                                          "Events",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      Image.asset("assets/Frame 105.png"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 23,
                      ),

                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     const Text(
                      //       "New Topics",
                      //       style: TextStyle(
                      //           color: Colors.black,
                      //           fontWeight: FontWeight.bold,
                      //           fontSize: 18),
                      //     ),
                      //     TextButton(
                      //       onPressed: () {
                      //         Navigator.of(context)
                      //             .push(MaterialPageRoute(builder: (context) {
                      //           return StreakScreen();
                      //         }));
                      //       },
                      //       child: Text(
                      //         "View All",
                      //         style: TextStyle(fontSize: 10),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      const SizedBox(
                        height: 23,
                      ),
                      // Card(
                      //   color: primary,
                      // ),
                      // const SizedBox(
                      //   height: 40,
                      // ),
                      // Card(
                      //   color: secondary,
                      // ),
                      // const SizedBox(
                      //   height: 40,
                      // ),
                      // Card(
                      //   color: tertiary,
                      // ),
                      // const SizedBox(
                      //   height: 40,
                      // ),
                      // Card(
                      //   color: yellow,
                      // ),
                      // const SizedBox(
                      //   height: 23,
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     const Text(
                      //       "Discover Something New",
                      //       style: TextStyle(
                      //           color: Colors.black,
                      //           fontWeight: FontWeight.bold,
                      //           fontSize: 18),
                      //     ),
                      //     TextButton(
                      //       onPressed: () {
                      //         Navigator.of(context)
                      //             .push(MaterialPageRoute(builder: (context) {
                      //           return ArticlePage();
                      //         }));
                      //       },
                      //       child: Text(
                      //         "View All",
                      //         style: TextStyle(fontSize: 10),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // DiscoverCard(
                      //   image: "assets/Rectangle 6.png",
                      // ),
                      // DiscoverCard(
                      //   image: "assets/unsplash_p0j-mE6mGo4.png",
                      // ),
                      // SizedBox(
                      //   height: 30,
                      // ),
                    ],
                  ),
                ),
                Container(
                  height: 196,
                  width: size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/homebannerpic.png",
                          ),
                          fit: BoxFit.cover)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Maintain a 5 day streak and\nlearn something new\neveryday.",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  "Let's Go!",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              height: 30,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: secondary),
                            ),
                          ],
                        ),
                      ),
                      Image.asset("assets/ink-layer.png"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Trending Streaks",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TrendingStreaksCard(),
                      TrendingStreaksCard(),
                      TrendingStreaksCard(),
                      TrendingStreaksCard(),
                    ],
                  ),
                ),
                // Container(
                //   width: size.width,
                //   height: 184,
                //   color: yellow,
                //   child: Stack(
                //     clipBehavior: Clip.none,
                //     children: [
                //       Positioned(
                //         right: 206,
                //         bottom: 60,
                //         child: Image.asset("assets/Frame 106.png"),
                //       ),
                //       Positioned(
                //         top: 20,
                //         left: 180,
                //         child: RichText(
                //           text: const TextSpan(
                //             children: [
                //               TextSpan(
                //                 text: "Up for a challenge???\n",
                //                 style: TextStyle(
                //                     color: dark,
                //                     fontSize: 18,
                //                     height: 2,
                //                     fontWeight: FontWeight.bold),
                //               ),
                //               TextSpan(
                //                   text:
                //                       "Maintain a 6 day streak and\n            learn something new\n                                   everday.",
                //                   style: TextStyle(
                //                       color: Colors.black,
                //                       fontSize: 12,
                //                       fontWeight: FontWeight.w500))
                //             ],
                //           ),
                //         ),
                //       ),
                //       Positioned(
                //         top: 120,
                //         left: 245,
                //         child: GestureDetector(
                //           onTap: () {
                //             Navigator.of(context)
                //                 .push(MaterialPageRoute(builder: (context) {
                //               return StreakScreen();
                //             }));
                //           },
                //           child: Container(
                //             child: Center(
                //               child: Text(
                //                 "Let's Go!",
                //                 style: TextStyle(color: Colors.white),
                //               ),
                //             ),
                //             height: 30,
                //             width: 70,
                //             decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(4),
                //                 color: primary),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 196,
                  width: size.width,
                  child: Image.asset(
                    "assets/homebannerpic.png", fit: BoxFit.cover,
                    // height: 196,
                    // width: size.width,
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                DiscoverCard(image: "assets/Rectangle 6.png"),
                DiscoverCard(image: "assets/unsplash_p0j-mE6mGo4.png"),

                // Container(
                //   width: size.width,
                //   height: 127,
                //   color: yellow,
                //   child: Stack(
                //     clipBehavior: Clip.none,
                //     children: [
                //       Positioned(
                //         left: 160,
                //         // bottom: 60,
                //         child: Image.asset("assets/Frame-1.png"),
                //       ),
                //       Positioned(
                //         top: 20,
                //         right: 165,
                //         child: RichText(
                //           text: const TextSpan(
                //             children: [
                //               TextSpan(
                //                 text: "Fit Reading into your life",
                //                 style: TextStyle(
                //                     color: dark,
                //                     fontSize: 18,
                //                     height: 2,
                //                     fontWeight: FontWeight.bold),
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //       Positioned(
                //         top: 80,
                //         left: 24,
                //         child: GestureDetector(
                //           onTap: () {
                //             Navigator.of(context)
                //                 .push(MaterialPageRoute(builder: (context) {
                //               return ArticlePage();
                //             }));
                //           },
                //           child: Container(
                //             child: Center(
                //               child: Text(
                //                 "Let's Go!",
                //                 style: TextStyle(color: Colors.white),
                //               ),
                //             ),
                //             height: 30,
                //             width: 70,
                //             decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(4),
                //                 color: primary),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                const SizedBox(
                  height: 160,
                ),
                // Container(
                //   width: size.width,
                //   height: 84,
                //   color: dark,
                //   child: Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: Text(
                //       "inunity",
                //       style: TextStyle(
                //           color: Colors.white,
                //           fontWeight: FontWeight.w400,
                //           fontSize: 24),
                //     ),
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // _logout() async {
  //   await GetIt.I.get<SupabaseClient>().auth.signOut();

  //   final sharedPreferences = await SharedPreferences.getInstance();
  //   sharedPreferences.clear();

  //   Navigator.pushReplacementNamed(context, '/');
  // }
}

class TrendingStreaksCard extends StatelessWidget {
  const TrendingStreaksCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 100,
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/Frame 105.png"),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "UI UX Design Concepts",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text(
                "Learn basic concepts of ui and ux design.",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 10),
              ),
            ],
          ),
          Icon(Icons.arrow_forward)
        ],
      ),
    );
  }
}

class DiscoverCard extends StatelessWidget {
  const DiscoverCard({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: SizedBox(
        // width: size.width / 0.50,
        // height: 237,
        // color: Colors.red,
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 265, top: 95),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.bookmark_outline,
                      color: Colors.white,
                    )),
              ),
              width: size.width / 0.5,
              height: 137,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "UI/UX Design Trends of 2022",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  Text(
                    "7 min read",
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                "As 2021 is coming to a close, we are taking the time to review some of the most notable trends for the upcoming year. These past couple of years serve as particularly st.... ",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({Key? key, required this.color}) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 0.5,
      height: 70,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            const Positioned(
              top: 2,
              child: Text(
                "UI UX Design Concepts",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
            ),
            const Positioned(
              top: 18,
              child: Text(
                "Learn basic concepts of ui and ux\ndesign.",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 12,
                ),
              ),
            ),
            Positioned(
              left: 200,
              // bottom: 100,
              child: Image.asset(
                "assets/Frame 8.png",
              ),
            )
          ],
        ),
      ),
    );
  }
}
