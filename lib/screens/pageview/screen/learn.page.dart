import 'package:animation/utils/colors.dart';
import 'package:coast/coast.dart';
import 'package:flutter/material.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: size.height / 6, //123,
            left: size.height / 12, //49,
            bottom: 0,
            right: 0,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Learn",
                    style: TextStyle(color: dark, fontSize: 24),
                  ),
                  TextSpan(
                      text: ".",
                      style: TextStyle(color: secondary, fontSize: 24))
                ],
              ),
            ),
          ),
          // Positioned(
          //   top: size.height / 2, //405,
          //   right: 326,
          //   child: Crab(
          //     tag: "tag",
          //     child: Container(
          //       alignment: Alignment.bottomLeft,
          //       width: 152,
          //       height: 152,
          //       decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //         color: Colors.transparent,
          //         border: Border.all(
          //           color: Colors.yellow,
          //           width: 5,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          Positioned(
            top: size.height / 10, //405,
            left: 220,
            child: TweenAnimationBuilder(
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeIn,
              tween: Tween(begin: 1.0, end: 0.0),
              builder: (context, double value, Widget? child) {
                return Transform.translate(
                  offset: Offset(-value * 240, value * 600),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    width: 152,
                    height: 152,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: yellow,
                        width: 2,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Positioned(
            top: 182,
            left: 60,
            child: SizedBox(
              height: 300,
              width: 307,
              child: Image.asset(
                "assets/Saly-16.webp",
                width: size.width,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 542,
            left: 50,
            right: 34,
            child: Text(
                " Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod tempor \n incididunt ut labore et dolore magna \n aliqua. "),
          ),
          // Positioned(
          //   top: 740,
          //   left: 148,
          //   child: Row(
          //     //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     children: [
          //       Container(
          //         height: 8,
          //         width: 8,
          //         decoration: BoxDecoration(
          //           color: secondary,
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
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
