import 'package:animation/screens/navscreens/learn/learn.course.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class LearnCourseIntroduction extends StatelessWidget {
  const LearnCourseIntroduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: size.width,
              color: primary,
              height: size.height * 0.4,
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
                      height: 31,
                    ),
                    const Text(
                      "WLCOME TO FIGMA",
                      style: TextStyle(
                          color: secondary,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          "assets/Frame 8.png",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 28, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "WLCOME TO FIGMA",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Figma is a collaborative interface design tool thats taking the design world by storm. Unlike Sketch, which runs as a standalone MacOS app, Figma is entirely browser-based, and therefore works not only on Macs, but also on PCs running Windows or Linux, and even on Chromebooks. It also offers a web API, and its free!.",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Figma is a collaborative interface design tool thats taking the design world by storm. Unlike SketchFigma is a collaborative interface design tool thats taking the design world by storm. Unlike Sketch",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "What well cover in Figma 101",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Figma is a collaborative interface design tool thats taking the design world by storm. Unlike Sketch, which runs as a standalone MacOS app, Figma is entirely browser-based, and therefore works not only on Macs, but also on PCs running Windows or Linux, and even on Chromebooks. It also offers a web API, and its free!.",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Course Line-up",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      children: const [
                        TextSpan(
                          text: "1",
                          style: TextStyle(color: dark, fontSize: 14),
                        ),
                        TextSpan(
                            text: "   Indroudction to Figma",
                            style: TextStyle(color: secondary, fontSize: 14))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      children: const [
                        TextSpan(
                          text: "2",
                          style: TextStyle(color: dark, fontSize: 14),
                        ),
                        TextSpan(
                            text: "   Indroudction to Figma",
                            style: TextStyle(color: secondary, fontSize: 14))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      children: const [
                        TextSpan(
                          text: "3",
                          style: TextStyle(color: dark, fontSize: 14),
                        ),
                        TextSpan(
                            text: "   Indroudction to Figma",
                            style: TextStyle(color: secondary, fontSize: 14))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      children: const [
                        TextSpan(
                          text: "4",
                          style: TextStyle(color: dark, fontSize: 14),
                        ),
                        TextSpan(
                            text: "   Indroudction to Figma",
                            style: TextStyle(color: secondary, fontSize: 14))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      children: const [
                        TextSpan(
                          text: "5",
                          style: TextStyle(color: dark, fontSize: 14),
                        ),
                        TextSpan(
                            text: "   Indroudction to Figma",
                            style: TextStyle(color: secondary, fontSize: 14))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      children: const [
                        TextSpan(
                          text: "6",
                          style: TextStyle(color: dark, fontSize: 14),
                        ),
                        TextSpan(
                            text: "   Indroudction to Figma",
                            style: TextStyle(color: secondary, fontSize: 14))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Authors",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 89,
                    height: 115,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Gautham Nayak",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: secondary),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "program Lead",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "The Social Innovation & Entrepreneurship Program Introduces Students To Both Theory And Practice Of Social Innovation & Entrepreneurship Through Highly Experiential, Interactive, And Collaborative Workshops. Working In A Team And On A Social Issue They Care About, Students Will Learn Design Thinki",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Course Details",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: size.height / 2.3,
                    width: size.width,
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
                    child: Column(
                      children: const [
                        ListTile(
                          leading: Icon(
                            Icons.person,
                            color: secondary,
                          ),
                          title: Text("100 students"),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.emoji_emotions_outlined,
                            color: secondary,
                          ),
                          title: Text("Online and at your own pace"),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.graphic_eq_outlined,
                            color: secondary,
                          ),
                          title: Text("Engish"),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.leaderboard,
                            color: secondary,
                          ),
                          title: Text("Beginner"),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.loop_sharp,
                            color: secondary,
                          ),
                          title: Text("Unlimited access forever"),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.lock_clock_rounded,
                            color: secondary,
                          ),
                          title: Text("6 hr"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return LearnCourse();
                      }));
                    },
                    child: Container(
                      height: 25,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        shape: BoxShape.rectangle,
                        color: secondary,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            "TAKE UP COURSE",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
