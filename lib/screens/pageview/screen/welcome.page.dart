import 'package:animation/screens/home/mainpage.dart';
import 'package:animation/screens/homepackage/drawer.screen.dart';
import 'package:animation/screens/homepackage/mainhome.dart';
import 'package:animation/utils/colors.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 0, top: 40),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Welcome to ",
                    style: TextStyle(color: secondary, fontSize: 24),
                  ),
                  TextSpan(
                      text: "BuddyApp",
                      style: TextStyle(color: primary, fontSize: 24))
                ],
              ),
            ),
            // SizedBox(
            //   height: 30,
            // ),
            Image.asset(
              "assets/Saly-19.png",
              // width: size.width,
              height: 269,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 52,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit!",
              style: TextStyle(),
            ),

            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TweenAnimationBuilder(
                  tween: Tween(begin: 1.0, end: 0.0),
                  duration: const Duration(milliseconds: 600),
                  builder: (context, double value, Widget? child) {
                    return Transform.translate(
                      offset: Offset(value * 300, value * 00),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return DrawerScreen();
                          }));
                        },
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          width: 137,
                          height: 41,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: secondary,
                          ),
                          child: Center(
                            child: Text(
                              "Get Started",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
