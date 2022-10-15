import 'package:animation/screens/navscreens/streak/strek.course.topics.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class CourseIndrooductionScreen extends StatelessWidget {
  const CourseIndrooductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
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
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Container(
              height: 70,
              width: size.width,
              color: primary,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const Positioned(
                      top: 2,
                      child: Text(
                        "Introduction to Figma",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 25,
                      child: Text(
                        "Learn basic concepts of design by using Figma.",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 250,
                      child: Hero(
                        tag: "Courselogo",
                        child: Image.asset(
                          "assets/Frame 8.png",
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 28, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "What we'll cover ?",
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Learn how to use Figma, a powerful tool for user interface design. If you're into UX, UI design, or app design, this Figma tutorial is ideal for you. In this course, you'll go through each step in designing and creating an app.",
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Text(
                    "Why take up this streak ?",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "If you’ve ever wanted to pursue a career in design, learn the ins-and-outs of the design process, regardless of why you want to learn about design, we got you covered!!If you’ve ever wanted to pursue a career in design, learn the ins-and-outs of the design process, regardless of why you want to learn about design, we got you covered!!If you’ve ever wanted to pursue a career in design, learn the ins-and-outs of the design process, regardless of why you want to learn about design, we got you covered!!If you’ve ever wanted to pursue a career in design, learn the ins-and-outs of the design process, regardless of why you want to learn about design, we got you covered!!",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "If you’ve ever wanted to pursue a career in design, learn the ins-and-outs of the design process, regardless of why you want to learn about design, we got you covered!!If you’ve ever wanted to pursue a career in design, learn the ins-and-outs of the design process, regardless of why you want to learn about design, we got you covered!!If you’ve ever wanted to pursue a career in design, learn the ins-and-outs of the design process, regardless of why you want to learn about design, we got you covered!!If you’ve ever wanted to pursue a career in design, learn the ins-and-outs of the design process, regardless of why you want to learn about design, we got you covered!!",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "What you will be building in this streak!",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 200, top: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => StrekCourseTopics()));
                      },
                      child: Container(
                        width: 137,
                        height: 41,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: secondary,
                        ),
                        child: Center(
                          child: Text(
                            "Get Started",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
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
