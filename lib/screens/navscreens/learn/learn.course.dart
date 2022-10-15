import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class LearnCourse extends StatefulWidget {
  const LearnCourse({Key? key}) : super(key: key);

  @override
  State<LearnCourse> createState() => _LearnCourseState();
}

class _LearnCourseState extends State<LearnCourse>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      // upperBound: 0.10,
      //value: 0.5,
      vsync: this,
      duration: const Duration(seconds: 1),
    )..addListener(() {
        setState(() {});
      });
    controller
      ..forward(from: 0.0)
      ..animateTo(0.5);
    //controller.repeat(reverse: false);
    // controller
    // ..animateTo(0.4);
    super.initState();
  }

  // @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }
  // double initial = 0.0;
  // @override
  // void initState() {
  //   setState(() {
  //     initial = 0.6;
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
            Container(
              height: size.height / 3,
              width: size.width,
              color: primary,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "About this Course",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Text(
                      "The Social Innovation & Entrepreneurship Program Introduces Students To Both Theory And Practice Of Social Innovation & Entrepreneurship Through Highly Experiential, Interactive, And Collaborative Workshops. Working In A Team And On A Social Issue They Care About, Students Will Learn Design Thinki",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.person_add_alt_1_outlined,
                          color: secondary,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "261",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.lock_clock_outlined,
                          color: secondary,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "6 hr",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    LinearProgressIndicator(
                      backgroundColor: Colors.white,
                      valueColor: new AlwaysStoppedAnimation<Color>(secondary),
                      value: controller.value,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: size.width,
              height: size.width,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: primary,
                    child: ExpansionTile(
                      leading: Container(
                        width: 53,
                        height: 60,
                        color: secondary,
                        child: Center(
                            child: Text(
                          "1.",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                      title: Text(
                        "Indroduction to Figma",
                        style: TextStyle(color: Colors.white),
                      ),
                      iconColor: secondary,
                      collapsedIconColor: secondary,
                      // backgroundColor: primary,
                      // collapsedBackgroundColor: Colors.red,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Navigator.of(context)
                            //     .push(MaterialPageRoute(builder: (context) {
                            //   return;
                            // }));
                          },
                          child: Container(
                            width: size.width,
                            height: 50,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Description"),
                                  Icon(
                                    Icons.play_arrow_outlined,
                                    color: secondary,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width,
                          height: 50,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Video"),
                                Icon(
                                  Icons.play_arrow_outlined,
                                  color: secondary,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: size.width,
                          height: 50,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Video with study material"),
                                Icon(
                                  Icons.play_arrow_outlined,
                                  color: secondary,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: size.width,
                          height: 50,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Video with refernce material(link)"),
                                Icon(
                                  Icons.play_arrow_outlined,
                                  color: secondary,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: size.width,
                          height: 50,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Video/Description/assignment"),
                                Icon(
                                  Icons.play_arrow_outlined,
                                  color: secondary,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: size.width,
                          height: 50,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Questionnaire"),
                                Icon(
                                  Icons.play_arrow_outlined,
                                  color: secondary,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: size.width,
                          height: 50,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Quiz"),
                                Icon(
                                  Icons.school_outlined,
                                  color: secondary,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: size.width,
                          height: 50,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Assignment Upload"),
                                Icon(
                                  Icons.school_outlined,
                                  color: secondary,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: size.width,
                          height: 50,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Rubric"),
                                Icon(
                                  Icons.school_outlined,
                                  color: secondary,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
