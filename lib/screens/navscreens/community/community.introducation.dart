import 'package:animation/screens/navscreens/community/community.chat.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class CommunityIntro extends StatelessWidget {
  const CommunityIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 28, right: 25),
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
                    "Community",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  const SizedBox(
                    height: 53,
                  ),
                  const Text(
                    "Robotics",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            Container(
              height: size.height / 2,
              width: size.width,
              decoration: BoxDecoration(color: primary),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 10,
                    right: 10,
                    left: 10,
                    child: Text(
                      "Automation and Robotics in food production",
                      style: TextStyle(
                          color: secondary,
                          fontWeight: FontWeight.w600,
                          fontSize: 24),
                    ),
                  ),
                  Positioned(
                    top: 80,
                    right: 10,
                    left: 10,
                    child: Text(
                      "The social Innovation & Entrepreneurship Program introduces students to both theory and practice. The social Innovation & Entrepreneurship Program introduces students to both theory and practice.The social Innovation & Entrepreneurship Program introduces students to both theory and practice",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ),
                  Positioned(
                    // bottom: 0,
                    top: 410,
                    right: 10,
                    left: 250,
                    child: Row(
                      children: [
                        Container(
                          height: 25,
                          width: 22,
                          decoration: BoxDecoration(
                            color: secondary,
                            borderRadius: BorderRadius.circular(4),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(46, 117, 117, 117),
                                spreadRadius: 1,
                                blurRadius: 15,
                              ),
                            ],
                          ),
                          child: Center(
                              child: Icon(
                            Icons.share,
                            size: 10,
                            color: Colors.white,
                          )),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Container(
                          height: 25,
                          width: 22,
                          decoration: BoxDecoration(
                            color: secondary,
                            borderRadius: BorderRadius.circular(4),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(46, 117, 117, 117),
                                spreadRadius: 1,
                                blurRadius: 15,
                              ),
                            ],
                          ),
                          child: Center(
                              child: Icon(
                            Icons.notifications,
                            size: 10,
                            color: Colors.white,
                          )),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CommunityChat()));
                          },
                          child: Container(
                            height: 25,
                            width: 53,
                            child: Center(
                              child: Text(
                                "Join",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: secondary,
                              borderRadius: BorderRadius.circular(4),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(46, 117, 117, 117),
                                  spreadRadius: 1,
                                  blurRadius: 15,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 28, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Host",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
