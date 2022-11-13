import 'package:animation/utils/colors.dart';
import 'package:flutter/material.dart';

class Articles extends StatefulWidget {
  const Articles({Key? key}) : super(key: key);

  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  // define your tab controller here
  // TabController? _tabController;

  // @override
  // void initState() {
  //   // initialise your tab controller here
  //   _tabController = TabController(length: 4, vsync: this);
  //   super.initState();
  // }

  /// List of Tab Bar Item
  // List<String> items = [
  //   "Home",
  //   "Explore",
  //   "Search",
  //   "Feed",
  //   "Post",
  //   "Activity",
  //   "Setting",
  //   "Profile",
  // ];
  // int current = 0;
  @override
  Widget build(BuildContext context) {
    // TabController _tabController = TabController(length: 3, vsync: this);
    final size = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 6,
      child: Scaffold(
        // appBar: AppBar(
        //   leading: Icon(
        //     Icons.menu,
        //     color: Colors.black,
        //   ),
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        //   title: Text(
        //     'Aszeit eSG',
        //     style: TextStyle(color: Colors.black),
        //   ),
        // ),
        body: Padding(
          padding: const EdgeInsets.only(left: 25, top: 65),
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
                "Articlea",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Container(
                child: const TabBar(
                  labelColor: Colors.green,
                  isScrollable: true,
                  indicatorColor: Colors.transparent,
                  unselectedLabelColor: Colors.grey,
                  unselectedLabelStyle: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.w700,
                  ),
                  labelStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  tabs: [
                    Tab(
                      text: "place",
                    ),
                    Tab(
                      text: "place",
                    ),
                    Tab(
                      text: "place",
                    ),
                    Tab(
                      text: "place",
                    ),
                    Tab(
                      text: "place",
                    ),
                    Tab(
                      text: "place",
                    ),
                  ],
                ),
              ),
              // Container(
              //   child: TabBarView(children: [
              //     Text(
              //       "hllo",
              //       style: TextStyle(color: Colors.black),
              //     ),
              //     Text(
              //       "hllo",
              //       style: TextStyle(color: Colors.black),
              //     ),
              //     Text(
              //       "hllo",
              //       style: TextStyle(color: Colors.black),
              //     ),
              //     Text(
              //       "hllo",
              //       style: TextStyle(color: Colors.black),
              //     ),
              //     Text(
              //       "hllo",
              //       style: TextStyle(color: Colors.black),
              //     ),
              //     Text(
              //       "hllo",
              //       style: TextStyle(color: Colors.black),
              //     ),
              //   ]),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
