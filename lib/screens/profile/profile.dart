import 'package:animation/screens/profile/star.rating.dart';
import 'package:animation/utils/colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: size.width,
              height: size.height * 0.5,
              decoration: const BoxDecoration(color: primary),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 65),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: secondary,
                          radius: 20,
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.arrow_back)),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_vert_outlined,
                              color: secondary,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150),
                    child: Stack(
                      children: const [
                        Positioned(
                          child: CircleAvatar(
                            foregroundImage: NetworkImage(
                                "https://media-exp1.licdn.com/dms/image/C4E03AQEtcSNf2v1oBQ/profile-displayphoto-shrink_800_800/0/1517524873332?e=1671062400&v=beta&t=FG6SClhzI_8PB4Hx4-KUU0U7-bO5BxiEY3PO7XS-iKY"),
                            radius: 40,
                          ),
                        ),
                        Positioned(
                          top: 56,
                          left: 55,
                          child: CircleAvatar(
                            backgroundColor: secondary,
                            radius: 10,
                            child: Icon(
                              Icons.edit,
                              size: 10,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 145),
                    child: Text(
                      "Preetham kulal",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 37,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Bio",
                          style: TextStyle(color: secondary),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitatio",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "kulalpreetham@gmail.com",
                              style: const TextStyle(
                                color: secondary,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.link_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 25, top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Activity",
                    style: TextStyle(
                        color: secondary,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8, top: 8),
                    child: Container(
                      height: size.height / 18,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: tertiary,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset("assets/Frameprofile.png"),
                            Text(
                              "Challenges",
                              style: TextStyle(color: Colors.white),
                            ),
                            const Spacer(),
                            Text(
                              "2",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8, top: 8),
                    child: Container(
                      height: size.height / 18,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: yellow,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("assets/Frameprofile.png"),
                            Text(
                              "Community",
                              style: TextStyle(color: Colors.white),
                            ),
                            const Spacer(),
                            Text(
                              "2",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8, top: 8),
                    child: Container(
                      height: size.height / 18,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: secondary,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset("assets/Frameprofile.png"),
                            Text(
                              "Challenges",
                              style: TextStyle(color: Colors.white),
                            ),
                            const Spacer(),
                            Text(
                              "3",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Skills",
                    style: TextStyle(
                        color: secondary,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Communication"),
                          Stars(rating: 2),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Communication"),
                          Stars(rating: 2),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Communication"),
                          Stars(rating: 3),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Communication"),
                          Stars(rating: 4),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Communication"),
                          Stars(rating: 1),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                  Text(
                    "Intrests",
                    style: TextStyle(
                        color: secondary,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: [
                      _buildChip(
                        "uiux",
                      ),
                      _buildChip(
                        "figma",
                      ),
                      _buildChip(
                        "sketch",
                      ),
                      _buildChip(
                        "robotics",
                      ),
                      _buildChip(
                        "designthinking",
                      ),
                      _buildChip(
                        "xd",
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildChip(
    String label,
  ) {
    return Padding(
      padding: const EdgeInsets.only(right: 4),
      child: Chip(
        labelPadding: EdgeInsets.all(2.0),
        avatar: CircleAvatar(
          backgroundColor: Colors.white70,
          child: Text(" # " + label),
        ),
        label: Text(
          label,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: yellow,
        elevation: 6.0,
        shadowColor: Colors.grey[60],
        padding: EdgeInsets.all(8.0),
      ),
    );
  }
}
