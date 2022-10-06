import 'package:animation/screens/navscreens/streak/course.introduction.dart';
import 'package:animation/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CourseSplash extends StatefulWidget {
  const CourseSplash({Key? key}) : super(key: key);

  @override
  State<CourseSplash> createState() => _CourseSplashState();
}

class _CourseSplashState extends State<CourseSplash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => CourseIndrooductionScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: "Courselogo",
              child: Lottie.asset(
                "assets/109033-figma-logo-loop.json",
                width: 200,
              ),
              // child: Lottie.network(
              //   "https://assets1.lottiefiles.com/private_files/lf30_lohxkokx.json",
              //   //width: 190,
              // ),
            ),
            Center(
              child: Text(
                "Figma Streak",
                style: TextStyle(
                  color: primary,
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ));
  }
}
