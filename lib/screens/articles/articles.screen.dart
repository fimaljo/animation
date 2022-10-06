import 'package:animation/utils/colors.dart';
import 'package:flutter/material.dart';

class ArticlesScreen extends StatelessWidget {
  const ArticlesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: CircleAvatar(
                backgroundColor: secondary,
                radius: 20,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Column(
            children: [
              Text(
                "Articles",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              Container(
                color: primary,
                child: TabBar(
                  indicator: BoxDecoration(color: secondary),
                  tabs: [
                    Tab(
                      text: "varun",
                    ),
                    Tab(
                      text: "",
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
