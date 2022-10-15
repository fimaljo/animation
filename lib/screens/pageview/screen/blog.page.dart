import 'package:coast/coast.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({Key? key}) : super(key: key);

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
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
                    text: "Blog",
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
            top: 50,
            left: 236, //bottom: 640,
            child: TweenAnimationBuilder(
              tween: Tween(begin: 1.0, end: 0.0),
              duration: const Duration(milliseconds: 600),
              builder: (context, double value, Widget? child) {
                return Transform.translate(
                  offset: Offset(-value * 400, value * 00),
                  child: Container(
                    width: 95,
                    height: 95,
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
            child: Image.asset(
              "assets/Saly-12.jpg",
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
        ],
      ),
    );
  }
}
