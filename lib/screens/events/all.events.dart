import 'package:animation/database/database_notifier.dart';
import 'package:animation/database/event.controller.dart';
import 'package:animation/database/model.dart';
import 'package:animation/screens/creditionals/supabase.credential.dart';
import 'package:animation/screens/events/event_detiles_screen.dart';
import 'package:animation/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart ';
import 'package:supabase_flutter/supabase_flutter.dart';

class AllEvenets extends StatefulWidget {
  const AllEvenets({Key? key}) : super(key: key);

  @override
  State<AllEvenets> createState() => _AllEvenetsState();
}

class _AllEvenetsState extends State<AllEvenets> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // const String APIKEY =
    //     "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inhub2R6ZHl2dmZ5dGFyeWRzanZxIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTM5MDM3ODksImV4cCI6MTk2OTQ3OTc4OX0.uTTh9kuORgr12G-mtWk1HB_Du0XeOuOXoX14mCEOaCo";
    // const String APIURL = "https://xnodzdyvvfytarydsjvq.supabase.co";
    // final client = SupabaseClient(APIURL, APIKEY);
    SupabaseClient client = Supabase.instance.client;
    // final DatabaseNotifier databaseNotifier =
    //     Provider.of<DatabaseNotifier>(context, listen: false);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: size.width,
              height: size.height,
              child: ListView.builder(
                itemCount: 14,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return EventCard();
                  // Column(
                  //   children: [Text(snapshot.data!.data['title']!)],
                  // );
                  // EventCardFinal(
                  //     event: snapshot.data!.data[index]);
                },
              ),
              // child: FutureBuilder<PostgrestResponse<dynamic>>(
              //   future: client.from('events').select().execute(),
              //   builder: (context, snapshot) {
              //     if (snapshot.connectionState == ConnectionState.waiting) {
              //       return CircularProgressIndicator();
              //     }
              //     if (snapshot.hasData) {
              //       return SizedBox(
              //         width: size.width,
              //         height: size.height,
              //         child: ListView.builder(
              //           itemCount: snapshot.data!.count,
              //           scrollDirection: Axis.horizontal,
              //           shrinkWrap: true,
              //           itemBuilder: (context, index) {
              //             return EventCardFinal(
              //                 event: snapshot.data!.data[index]);
              //             // Column(
              //             //   children: [Text(snapshot.data!.data['title']!)],
              //             // );
              //             // EventCardFinal(
              //             //     event: snapshot.data!.data[index]);
              //           },
              //         ),
              //       );
              //     }
              //     return Center(child: CircularProgressIndicator());
              //   },
              // ),
            )
            // Consumer<EventController>(
            //   builder: (context, eventController, _) {
            //     if (eventController.isLoading) {
            //       return Center(
            //         child: Text(
            //           'Loading content..',
            //         ),
            //       );
            //     }
            //     return SizedBox(
            //       width: size.width,
            //       height: size.height,
            //       child: ListView.builder(
            //         itemCount: eventController.eventsDataModelList.length,
            //         scrollDirection: Axis.horizontal,
            //         shrinkWrap: true,
            //         itemBuilder: (context, index) {
            //           EventDataModel eventsModel =
            //               eventController.eventsDataModelList[index];

            //           return ChangeNotifierProvider.value(
            //             value: eventController,
            //             child: EventCardFinal(
            //               event: eventsModel,
            //             ),
            //           );
            //         },
            //       ),
            //     );
            //   },
            // )
          ],
        ),
      ),
    );
  }
}

class EventCardFinal extends StatefulWidget {
  const EventCardFinal({
    Key? key,
    required this.event,
  }) : super(key: key);

  final EventDataModel event;

  @override
  State<EventCardFinal> createState() => _EventCardFinalState();
}

class _EventCardFinalState extends State<EventCardFinal> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => EventDetails()));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 0, top: 50),
        child: Column(
          children: [
            Container(
              height: 144,
              width: 324,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('${widget.event.thumbnail}'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6), topLeft: Radius.circular(6)),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(46, 117, 117, 117),
                    spreadRadius: 1,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Row(
                  //   children: [
                  //     Container(
                  //       height: 50,
                  //       width: 100,
                  //       color: Colors.red,
                  //     )
                  //   ],
                  // )
                ],
              ),
            ),
            Container(
              height: size.height / 15,
              width: 324,
              decoration: BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(6),
                    bottomLeft: Radius.circular(6)),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(46, 117, 117, 117),
                    spreadRadius: 1,
                    blurRadius: 15,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Text(
                    '${widget.event.title?.toUpperCase()}',
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EventCardOne extends StatelessWidget {
  const EventCardOne({Key? key, required this.snap}) : super(key: key);
  final snap;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => EventDetails()));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 0, top: 50),
        child: Column(
          children: [
            Container(
              height: 144,
              width: 324,
              decoration: BoxDecoration(
                image:
                    DecorationImage(image: NetworkImage(""), fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6), topLeft: Radius.circular(6)),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(46, 117, 117, 117),
                    spreadRadius: 1,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Row(
                  //   children: [
                  //     Container(
                  //       height: 50,
                  //       width: 100,
                  //       color: Colors.red,
                  //     )
                  //   ],
                  // )
                ],
              ),
            ),
            Container(
              height: size.height / 15,
              width: 324,
              decoration: BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(6),
                    bottomLeft: Radius.circular(6)),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(46, 117, 117, 117),
                    spreadRadius: 1,
                    blurRadius: 15,
                  ),
                ],
              ),
              child: Row(
                children: [Text(snap["title"])],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EventCard extends StatefulWidget {
  const EventCard({
    Key? key,
    //  required this.event,
  }) : super(key: key);

  // final EventDataModel event;

  @override
  State<EventCard> createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => EventDetails()));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 0, top: 50),
        child: Column(
          children: [
            Container(
              height: 144,
              width: 324,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://jlgsyifirubkhkwnxgri.supabase.co/storage/v1/object/public/the-bucket/thumbnails/events/meetup banner.jpeg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6), topLeft: Radius.circular(6)),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(46, 117, 117, 117),
                    spreadRadius: 1,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Row(
                  //   children: [
                  //     Container(
                  //       height: 50,
                  //       width: 100,
                  //       color: Colors.red,
                  //     )
                  //   ],
                  // )
                ],
              ),
            ),
            Container(
              height: size.height / 15,
              width: 324,
              decoration: BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(6),
                    bottomLeft: Radius.circular(6)),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(46, 117, 117, 117),
                    spreadRadius: 1,
                    blurRadius: 15,
                  ),
                ],
              ),
              child: Row(
                  // children: [Text(widget.event.title!)],
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
