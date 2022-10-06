import 'package:animation/screens/pageview/screen/welcome.page.dart';
import 'package:coast/coast.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: GestureDetector(
        onHorizontalDragUpdate: (dragUpdateDetails) {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return WelcomePage();
          }));
        },
        child: Stack(
          children: [
            Positioned(
              top: size.height / 6, //123,
              left: size.height / 12, //49,
              bottom: 0,
              right: 0,
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Events",
                      style: TextStyle(color: dark, fontSize: 24),
                    ),
                    TextSpan(
                        text: ".",
                        style: TextStyle(color: secondary, fontSize: 24))
                  ],
                ),
              ),
            ),
            Positioned(
              top: 267,
              right: 305,
              child: TweenAnimationBuilder(
                tween: Tween(begin: 1.0, end: 0.0),
                duration: const Duration(milliseconds: 600),
                builder: (context, double value, Widget? child) {
                  return Transform.translate(
                    offset: Offset(value * 300, value * 00),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      width: 139,
                      height: 139,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border: Border.all(
                          color: Colors.yellow,
                          width: 2,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Positioned(
              top: 60,
              left: 300,
              child: TweenAnimationBuilder(
                duration: const Duration(milliseconds: 600),
                curve: Curves.easeIn,
                tween: Tween(begin: 1.0, end: 0.0),
                builder: (context, double value, Widget? child) {
                  return Transform.translate(
                    offset: Offset(-value * 240, value * 600),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      width: 139,
                      height: 139,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.yellow,
                          width: 2,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Positioned(
              top: 251,
              left: 112,
              child: SizedBox(
                height: 185,
                width: 150,
                child: Image.asset(
                  "assets/Saly-26.png",
                  width: size.width,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Positioned(
              top: 542,
              left: 52,
              right: 34,
              child: Text(
                  " Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod tempor \n incididunt ut labore et dolore magna \n aliqua. "),
            ),
            // Positioned(
            //   top: 542,
            //   left: 52,
            //   right: 34,
            //   child: GestureDetector(
            //     onVerticalDragUpdate: (dragUpdateDetails) {
            //       Navigator.of(context)
            //           .push(MaterialPageRoute(builder: (context) {
            //         return WelcomePage();
            //       }));
            //     },
            //   ),
            // ),

            // Positioned(
            //   top: 740,
            //   left: 152,
            //   child: Row(
            //     //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Container(
            //         height: 8,
            //         width: 8,
            //         decoration: BoxDecoration(
            //           color: secondarylight,
            //           shape: BoxShape.circle,
            //         ),
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       Container(
            //         height: 8,
            //         width: 8,
            //         decoration: BoxDecoration(
            //           color: secondarylight,
            //           shape: BoxShape.circle,
            //         ),
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       Container(
            //         height: 8,
            //         width: 8,
            //         decoration: BoxDecoration(
            //           color: secondarylight,
            //           shape: BoxShape.circle,
            //         ),
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       Container(
            //         height: 8,
            //         width: 8,
            //         decoration: BoxDecoration(
            //           color: secondarylight,
            //           shape: BoxShape.circle,
            //         ),
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
