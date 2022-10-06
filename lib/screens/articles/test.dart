import 'package:animation/screens/articles/list.dart';
import 'package:animation/utils/colors.dart';
import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  @override
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar>
    with SingleTickerProviderStateMixin {
  // define your tab controller here
  TabController? _tabController;

  @override
  void initState() {
    // initialise your tab controller here
    _tabController = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 55),
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
          const SizedBox(
            height: 0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 24),
            child: const Text(
              "Articles",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 2),
            child: Container(
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: TabBar(
                  controller: _tabController,
                  labelColor: Colors.white,
                  isScrollable: true,
                  indicator: BoxDecoration(
                      color: secondary, borderRadius: BorderRadius.circular(6)),
                  indicatorColor: Colors.red,
                  unselectedLabelColor: primary,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.w700,
                  ),
                  labelStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  tabs: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          //color: primary,
                          ),
                      child: Center(
                          child: Text(
                        'All',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      )),
                    ),
                    // Text('All'),
                    Text('UI/UX'),
                    Text('Technology'),
                    Text('Robotics'),
                    Text('Iot'),
                    Text('Machine Learing'),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                DiscoverScreens(),
                Center(
                  child: Text(
                    'KALTEGETRANKE',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                ),
                Center(
                  child: Text(
                    'HEIBGETRANKE',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                ),
                Center(
                  child: Text(
                    'MILCHPPODUKE',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                ),
                Text('Iot'),
                Text('Iot'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
