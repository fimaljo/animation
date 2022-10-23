import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../utils/colors.dart';

class TopicIntro extends StatelessWidget {
  const TopicIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: size.width,
            color: primary,
            height: size.height * 0.3,
            child: Padding(
              padding: const EdgeInsets.only(left: 24, top: 28, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: secondary,
                    radius: 20,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Text(
                    "FIGMA",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Day 01",
                    style: TextStyle(
                        color: secondary,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          Lottie.asset(
            "assets/109033-figma-logo-loop.json",
            width: 200,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 150),
            child: Column(
              children: [
                Text(
                  "Today's learning objectives",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 120),
            child: Column(
              children: [
                Text(
                  "Login Page for a Music App",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Text(
                  "Login Page for a Music App",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            width: 137,
            height: 41,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: secondary,
            ),
            child: Center(
              child: Text(
                "Continue",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
