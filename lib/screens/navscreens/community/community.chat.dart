import 'package:animation/utils/colors.dart';
import 'package:flutter/material.dart';

class CommunityChat extends StatelessWidget {
  const CommunityChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Container(
                height: 271,
                width: size.width,
                // ignore: sort_child_properties_last
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, top: 65, right: 20),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: 0,
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
                      Positioned(
                        top: 70,
                        child: const Text(
                          "Robotics",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                      ),
                      Positioned(
                        top: 130,
                        right: 10,
                        left: 0,
                        child: const Text(
                          "Automation and Robotics in food production",
                          style: TextStyle(
                              color: secondary,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Positioned(
                          top: 190,
                          left: 230,
                          child: Row(
                            children: [
                              Container(
                                height: 25,
                                width: 22,
                                decoration: BoxDecoration(
                                  color: secondary,
                                  borderRadius: BorderRadius.circular(4),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromARGB(46, 117, 117, 117),
                                      spreadRadius: 1,
                                      blurRadius: 15,
                                    ),
                                  ],
                                ),
                                child: Center(
                                    child: Icon(
                                  Icons.share,
                                  size: 10,
                                  color: Colors.white,
                                )),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Container(
                                height: 25,
                                width: 22,
                                decoration: BoxDecoration(
                                  color: secondary,
                                  borderRadius: BorderRadius.circular(4),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromARGB(46, 117, 117, 117),
                                      spreadRadius: 1,
                                      blurRadius: 15,
                                    ),
                                  ],
                                ),
                                child: Center(
                                    child: Icon(
                                  Icons.notifications,
                                  size: 10,
                                  color: Colors.white,
                                )),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => CommunityChat()));
                                },
                                child: Container(
                                  height: 25,
                                  width: 53,
                                  child: Center(
                                    child: Text(
                                      "Join",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: secondary,
                                    borderRadius: BorderRadius.circular(4),
                                    boxShadow: const [
                                      BoxShadow(
                                        color:
                                            Color.fromARGB(46, 117, 117, 117),
                                        spreadRadius: 1,
                                        blurRadius: 15,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
                decoration: const BoxDecoration(color: primary),
              )
            ],
          ),
          Column(
            children: [
              // Expanded(child: Container()),
              Container(
                color: Colors.grey.shade300,
                child: TextField(
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      hintText: 'Type your message gere....'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
