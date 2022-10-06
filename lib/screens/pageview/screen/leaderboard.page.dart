import 'package:coast/coast.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class LeaderBoardPage extends StatelessWidget {
  const LeaderBoardPage({Key? key}) : super(key: key);

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
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "LeaderBoard",
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
            top: 30,
            left: 220,
            child: TweenAnimationBuilder(
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeIn,
              tween: Tween(begin: 1.0, end: 0.0),
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
                        width: 5,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Positioned(
            top: size.height * 0.6,
            left: size.width * 0.2,
            child: TweenAnimationBuilder(
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeIn,
              tween: Tween(begin: 1.0, end: 0.0),
              builder: (context, double value, Widget? child) {
                return Transform.translate(
                  offset: Offset(value * 300, value * 00),
                  child: Container(
                    width: 34,
                    height: 34,
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
            top: 182,
            child: SizedBox(
              height: 344,
              child: Image.asset(
                "assets/Saly-15.png",
                width: size.width,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            top: 542,
            left: 49,
            right: 34,
            child: Text(
                " Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod tempor \n incididunt ut labore et dolore magna \n aliqua. "),
          ),
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
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
