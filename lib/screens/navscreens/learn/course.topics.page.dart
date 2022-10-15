import 'package:animation/screens/navscreens/learn/learn.course.introduction.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../utils/colors.dart';

class CourseTopicsPage extends StatelessWidget {
  CourseTopicsPage({Key? key}) : super(key: key);
  List RandomImages = [
    'https://pbs.twimg.com/media/D8dDZukXUAAXLdY.jpg',
    'https://pbs.twimg.com/profile_images/1249432648684109824/J0k1DN1T_400x400.jpg',
    'https://i0.wp.com/thatrandomagency.com/wp-content/uploads/2021/06/headshot.png?resize=618%2C617&ssl=1',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaOjCZSoaBhZyODYeQMDCOTICHfz_tia5ay8I_k3k&s'
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Robotics",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: size.height,
              width: size.width,
              child: ListView.builder(
                itemCount: 28,
                itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LearnCourseIntroduction()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: size.height / 8,
                          width: 324,
                          decoration: BoxDecoration(
                              color: primary,
                              borderRadius: BorderRadius.circular(6)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
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
                                  top: 50,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        for (int i = 0;
                                            i < RandomImages.length;
                                            i++)
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                vertical: 0),
                                            child: Align(
                                                widthFactor: 0.5,
                                                child: CircleAvatar(
                                                  radius: 10,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  child: CircleAvatar(
                                                    radius: 40,
                                                    backgroundImage:
                                                        NetworkImage(
                                                      RandomImages[i],
                                                    ),
                                                  ),
                                                )),
                                          ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "50 +",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
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
                        ),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
