import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DiscoverScreens extends StatelessWidget {
  const DiscoverScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DiscoverCard> discoverCard = [
      const DiscoverCard(
        image: "assets/unsplash_SYTO3xs06fU.png",
      ),
      const DiscoverCard(image: "assets/unsplash_vEE00Hx5d0Q.png"),
      const DiscoverCard(
        image: "assets/unsplash_SYTO3xs06fU.png",
      ),
      const DiscoverCard(image: "assets/unsplash_vEE00Hx5d0Q.png"),
    ];
    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return DiscoverCard(
            image: "assets/unsplash_SYTO3xs06fU.png",
          );
        },
      ),
    );
  }
}

class DiscoverCard extends StatelessWidget {
  const DiscoverCard({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 19, right: 24, bottom: 32),
      child: SizedBox(
        width: 324,
        height: 237,
        // color: Colors.red,
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 265,
                  top: 95,
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.bookmark_outline,
                      color: Colors.white,
                    )),
              ),
              width: 364,
              height: 137,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "UI/UX Design Trends of 2022",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  Text(
                    "7 min read",
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Text(
                "As 2021 is coming to a close, we are taking the time to review some of the most notable trends for the upcoming year. These past couple of years serve as particularly st.... ",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
