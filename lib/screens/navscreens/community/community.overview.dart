import 'package:animation/screens/navscreens/community/community.introducation.dart';
import 'package:animation/screens/navscreens/streak/course.splash.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class CommunityOverView extends StatelessWidget {
  const CommunityOverView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List RandomImages = [
      'https://pbs.twimg.com/media/D8dDZukXUAAXLdY.jpg',
      'https://pbs.twimg.com/profile_images/1249432648684109824/J0k1DN1T_400x400.jpg',
      'https://i0.wp.com/thatrandomagency.com/wp-content/uploads/2021/06/headshot.png?resize=618%2C617&ssl=1',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaOjCZSoaBhZyODYeQMDCOTICHfz_tia5ay8I_k3k&s'
    ];
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
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
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 48),
                    child: Column(
                      children: [
                        Container(
                          height: size.height / 5,
                          width: 324,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(46, 117, 117, 117),
                                spreadRadius: 1,
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: size.height / 7,
                                width: 324,
                                decoration: BoxDecoration(
                                  color: primary,
                                  borderRadius: BorderRadius.circular(6),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromARGB(46, 117, 117, 117),
                                      spreadRadius: 1,
                                      blurRadius: 15,
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "Automation and Robotics in food production",
                                        style: TextStyle(
                                            color: secondary,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "The social Innovation & Entrepreneurship Program introduces students to both theory and practice.",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, left: 15),
                                child: Row(
                                  // crossAxisAlignment: CrossAxisAlignment.end,
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceEvenly,
                                  children: [
                                    for (int i = 0;
                                        i < RandomImages.length;
                                        i++)
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(vertical: 0),
                                        decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Color.fromARGB(
                                                  46, 117, 117, 117),
                                              spreadRadius: 1,
                                              blurRadius: 10,
                                            ),
                                          ],
                                        ),
                                        child: Align(
                                            widthFactor: 0.5,
                                            child: CircleAvatar(
                                              radius: 10,
                                              backgroundColor:
                                                  Colors.transparent,
                                              child: CircleAvatar(
                                                radius: 40,
                                                backgroundImage: NetworkImage(
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
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    SizedBox(
                                      width: 95,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 22,
                                          decoration: BoxDecoration(
                                            color: secondary,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Color.fromARGB(
                                                    46, 117, 117, 117),
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
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Color.fromARGB(
                                                    46, 117, 117, 117),
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
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        CommunityIntro()));
                                          },
                                          child: Container(
                                            height: 25,
                                            width: 53,
                                            child: Center(
                                              child: Text(
                                                "Join",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              color: secondary,
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              boxShadow: const [
                                                BoxShadow(
                                                  color: Color.fromARGB(
                                                      46, 117, 117, 117),
                                                  spreadRadius: 1,
                                                  blurRadius: 15,
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
