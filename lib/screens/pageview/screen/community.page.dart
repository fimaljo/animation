import 'package:animation/utils/colors.dart';
import 'package:coast/coast.dart';
import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({Key? key}) : super(key: key);

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
                    text: "Community",
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
              //top: 405,
              right: 236,
              bottom: 500,
              child: Crab(
                tag: "tagone",
                child: TweenAnimationBuilder(
                    tween: Tween(begin: 1.0, end: 0.0),
                    duration: const Duration(milliseconds: 600),
                    builder: (context, double value, Widget? child) {
                      return Transform.translate(
                        offset: Offset(value * 300, value * 00),
                        child: Container(
                          width: 326,
                          height: 326,
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
                    }),
              )),
          Positioned(
            top: 182,
            child: Image.asset(
              "assets/Saly-31.png",
              width: size.width,
              fit: BoxFit.cover,
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
          //   left: 150,
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
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
