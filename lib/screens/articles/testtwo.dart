import 'package:animation/utils/colors.dart';
import 'package:flutter/material.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({Key? key}) : super(key: key);

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  List<String> items = [
    "All",
    "UI/UX",
    "Technology",
    "Robotics",
    "Post",
    "Iot",
    "Machine Learning",
    "Profile",
  ];

  /// List of body icon
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
  int current = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, top: 28),
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
              Hero(
                tag: "articles",
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
              SizedBox(
                height: 28,
                width: size.width,
                child: ListView.builder(
                    itemCount: items.length,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: Container(
                            // height: 10, width: 50,
                            // margin: const EdgeInsets.all(25.0),
                            // padding: const EdgeInsets.all(25.0),
                            decoration: BoxDecoration(
                                color: current == index ? secondary : primary,
                                borderRadius: BorderRadius.circular(6)),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text(
                                  items[index],
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              Container(
                height: size.height,
                width: size.width,
                child: ListView.builder(
                  itemCount: discoverCard.length,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return discoverCard[current];
                  },
                ),
              )
            ],
          ),
        ),
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
      padding: const EdgeInsets.only(right: 24, bottom: 32),
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
