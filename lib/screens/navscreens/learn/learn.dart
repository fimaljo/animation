import 'package:animation/screens/navscreens/learn/course.page.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class LearnScreen extends StatelessWidget {
  const LearnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
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
                "Learn",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              const SizedBox(
                height: 20,
              ),
              TabBar(
                labelColor: Colors.black,
                tabs: [
                  Tab(
                    text: "Course",
                  ),
                  Tab(
                    text: "History",
                  ),
                ],
              ),
              Expanded(
                  child: TabBarView(children: [
                CoursePage(),
                Container(),
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
