import 'package:animation/screens/events/all.events.dart';
import 'package:animation/screens/events/all_events_two.dart';
import 'package:animation/utils/colors.dart';
import 'package:flutter/material.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(110.0),
          child: AppBar(
            elevation: 0,
            automaticallyImplyLeading: false,
            backgroundColor: primary,
            centerTitle: false,
            titleSpacing: 10,
            title: Text("Events"),
          ),
        ),
        body: Column(
          children: [
            Container(
              color: primary,
              child: TabBar(
                tabs: [
                  Tab(
                    text: "All Events",
                  ),
                  Tab(
                    text: "Registered",
                  ),
                  Tab(
                    text: "Saved",
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                AllEvenets(),
                AllEventsTwo(),
                AllEvenets(),
              ]),
            )
          ],
        ),
        // body: SingleChildScrollView(
        //   child: Padding(
        //     padding: const EdgeInsets.only(left: 24, top: 40, right: 25),
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         CircleAvatar(
        //           backgroundColor: secondary,
        //           radius: 20,
        //           child: IconButton(
        //             onPressed: () {
        //               Navigator.pop(context);
        //             },
        //             icon: const Icon(Icons.arrow_back),
        //           ),
        //         ),
        //         const SizedBox(
        //           height: 31,
        //         ),
        //         const Text(
        //           "Events",
        //           style: TextStyle(
        //               color: Colors.black,
        //               fontWeight: FontWeight.bold,
        //               fontSize: 24),
        //         ),
        //         const SizedBox(
        //           height: 20,
        //         ),
        //         SizedBox(
        //           height: size.height,
        //           width: size.width,
        //           child: GridView.builder(
        //               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //                 crossAxisCount: 2, childAspectRatio: 0.5,
        //                 // crossAxisSpacing: 0.5,
        //                 //  mainAxisSpacing: 0.5,
        //               ),
        //               itemCount: 15,
        //               itemBuilder: (context, index) {
        //                 return Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                     Container(
        //                       height: 215,
        //                       width: 150,
        //                       decoration: BoxDecoration(
        //                           color: Colors.red,
        //                           borderRadius: BorderRadius.circular(6)),
        //                     ),
        //                     Column(
        //                       crossAxisAlignment: CrossAxisAlignment.start,
        //                       children: [
        //                         Padding(
        //                           padding:
        //                               const EdgeInsets.only(top: 5, bottom: 5),
        //                           child:
        //                               Text("Stem talks, Engaging Possiblities"),
        //                         ),
        //                         Padding(
        //                           padding:
        //                               const EdgeInsets.only(top: 5, bottom: 5),
        //                           child: Text("20 Feb, 9:30AM"),
        //                         )
        //                       ],
        //                     ),
        //                   ],
        //                 );
        //               }),
        //         )
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
