import 'package:animation/screens/navscreens/streak/topic.intro.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class StrekCourseTopics extends StatelessWidget {
  const StrekCourseTopics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: size.width,
            color: Colors.white,
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
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => TopicIntro()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 90,
                    width: 335,
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 45,
                            width: 35,
                            decoration: BoxDecoration(
                              color: secondary,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Text(
                                    "Day 1",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 8,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: const [
                              Text(
                                "Indroduction and login page for an App",
                                style: TextStyle(color: Colors.white),
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Icon(
                                  Icons.lock,
                                  color: yellow,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
