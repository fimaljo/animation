import 'dart:math';

import 'package:animation/screens/homepackage/mainhome.dart';
import 'package:animation/screens/navscreens/home.dart';
import 'package:animation/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) {
                //   return MainHome();
                // }));
              },
              icon: Transform.rotate(
                angle: 10 * pi / 100,
                child: Hero(
                  tag: "Notification",
                  child: SvgPicture.asset(
                    "assets/clarity_notification-line.svg",
                    color: Colors.blue,
                  ),
                ),
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 35,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 80,
              width: 300,
              decoration: BoxDecoration(
                  color: primary, borderRadius: BorderRadius.circular(6)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Notification",
                      style: TextStyle(color: Colors.white),
                    ),
                    Container(
                      height: 100,
                      width: 120,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/unsplash_SYTO3xs06fU.png"),
                              fit: BoxFit.cover)),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 80,
              width: 300,
              decoration: BoxDecoration(
                  color: yellow, borderRadius: BorderRadius.circular(6)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Notification",
                      style: TextStyle(color: Colors.white),
                    ),
                    Container(
                      height: 100,
                      width: 120,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/unsplash_SYTO3xs06fU.png"),
                              fit: BoxFit.cover)),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 80,
              width: 300,
              decoration: BoxDecoration(
                  color: secondary, borderRadius: BorderRadius.circular(6)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Notification",
                      style: TextStyle(color: Colors.white),
                    ),
                    Container(
                      height: 100,
                      width: 120,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/unsplash_SYTO3xs06fU.png"),
                              fit: BoxFit.cover)),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 80,
              width: 300,
              decoration: BoxDecoration(
                  color: yellow, borderRadius: BorderRadius.circular(6)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Notification",
                      style: TextStyle(color: Colors.white),
                    ),
                    Container(
                      height: 100,
                      width: 120,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/unsplash_SYTO3xs06fU.png"),
                              fit: BoxFit.cover)),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
