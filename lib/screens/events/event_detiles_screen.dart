import 'dart:io';

import 'package:animation/utils/colors.dart';
import 'package:flutter/material.dart';

class EventDetails extends StatelessWidget {
  const EventDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 80,
          child: Column(
            children: [
              Container(
                width: 300,
                height: 40,
                color: secondary,
                child: Center(
                  child: Text(
                    "REGISTER",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Last date to register : Friday, August 19, 2022 at 4:00 PM",
                  style: TextStyle(fontSize: 10, color: dark),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: 414,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/Rectangle 160.png",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              width: size.width,
              height: 80,
              color: dark,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Inspiren 2022",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Inspire 2022 Social Innovation Expo",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.bookmark_add_rounded,
                          color: Colors.white,
                        )),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.share_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Date and Time",
                          style: TextStyle(fontSize: 15, color: secondary),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    "Saturday, 23 September 2022 \n10:00 am  3:00 pm IST",
                    style: TextStyle(fontSize: 12, color: dark),
                  ),
                ),
              ],
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Location",
                          style: TextStyle(fontSize: 15, color: secondary),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    "sahyadri Campus",
                    style: TextStyle(fontSize: 12, color: dark),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Divider(
                thickness: 1,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "About this Event",
                          style: TextStyle(fontSize: 15, color: secondary),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text(
                    "A social innovation expo where students come together to make real and lasting change towards social good",
                    style: TextStyle(fontSize: 12, color: dark),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Seassion details",
                          style: TextStyle(fontSize: 15, color: secondary),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text(
                    "A social innovation expo where students come together to make real and lasting change towards social good",
                    style: TextStyle(fontSize: 12, color: dark),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Pre-Requistes",
                          style: TextStyle(fontSize: 15, color: secondary),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "1. Prototype",
                        style: TextStyle(fontSize: 12, color: dark),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "2. Prototype",
                        style: TextStyle(fontSize: 12, color: dark),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "3. Prototype",
                        style: TextStyle(fontSize: 12, color: dark),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "4. Prototype",
                        style: TextStyle(fontSize: 12, color: dark),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Pre-Requistes",
                          style: TextStyle(fontSize: 15, color: secondary),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Raksha B.S",
                        style: TextStyle(fontSize: 12, color: dark),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "raksha.bs@technicalcareer.education",
                        style: TextStyle(fontSize: 12, color: dark),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "9632634338",
                        style: TextStyle(fontSize: 12, color: dark),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            // Stack(
            //   children: [
            //     Positioned(
            //       bottom: 0,
            //       child: Column(
            //         children: [
            //           Container(
            //             width: 300,
            //             height: 40,
            //             color: secondary,
            //             child: Center(
            //               child: Text(
            //                 "REGISTER",
            //                 style: TextStyle(fontSize: 12, color: Colors.white),
            //               ),
            //             ),
            //           ),
            //           Padding(
            //             padding: const EdgeInsets.all(8.0),
            //             child: Text(
            //               "Last date to register : Friday, August 19, 2022 at 4:00 PM",
            //               style: TextStyle(fontSize: 10, color: dark),
            //             ),
            //           ),
            //           SizedBox(
            //             height: 40,
            //           ),
            //         ],
            //       ),
            //     )
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
