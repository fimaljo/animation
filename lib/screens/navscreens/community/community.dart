import 'package:animation/screens/navscreens/community/community.overview.dart';
import 'package:animation/screens/pageview/screen/community.page.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
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
              "Community",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: size.width / 1.2,
              height: size.height / 16,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(46, 117, 117, 117),
                    spreadRadius: 1,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  readOnly: true,
                  showCursor: true,
                  decoration: const InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(color: primary),
                      prefixIcon: Icon(
                        Icons.search,
                        color: secondary,
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none),
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => SearchScreen()));
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: StaggeredDualView(
                  aspectRatio: 0.65,
                  spacing: 30,
                  itembuilder: (context, index) {
                    return Staggered();
                  },
                  itemCount: 5),
            ),
          ],
        ),
      ),
    );
  }
}

class Staggered extends StatelessWidget {
  const Staggered({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => CommunityOverView()));
      },
      child: Container(
        width: 152,
        height: 208,
        decoration: BoxDecoration(
            color: secondary, borderRadius: BorderRadius.circular(8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "UI&UX",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Image.asset("assets/Frame-2.png")
          ],
        ),
      ),
    );
  }
}

class StaggeredDualView extends StatelessWidget {
  const StaggeredDualView(
      {Key? key,
      required this.itembuilder,
      required this.itemCount,
      this.spacing = 0.5,
      this.aspectRatio = 0.5})
      : super(key: key);
  final IndexedWidgetBuilder itembuilder;
  final int itemCount;
  final double spacing;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: aspectRatio,
          crossAxisSpacing: spacing,
          mainAxisSpacing: spacing,
        ),
        itemBuilder: (context, index) {
          return Transform.translate(
            offset: Offset(0.0, index.isOdd ? 80 : 0.0),
            child: itembuilder(context, index),
          );
        });
  }
}
