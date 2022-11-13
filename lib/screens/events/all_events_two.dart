import 'package:animation/utils/colors.dart';
import 'package:flutter/material.dart';

class AllEventsTwo extends StatefulWidget {
  AllEventsTwo({Key? key}) : super(key: key);

  @override
  State<AllEventsTwo> createState() => _AllEventsTwoState();
}

class _AllEventsTwoState extends State<AllEventsTwo> {
  final PageController ctrl = PageController(viewportFraction: 0.8);

  int currentPage = 0;
  @override
  void initState() {
    ctrl.addListener(() {
      int next = ctrl.page!.round();
      if (currentPage != next) {
        setState(() {
          currentPage = next;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110.0),
        child: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: primary,
          titleSpacing: 10,
          title: Text("Events"),
        ),
      ),
      body: PageView.builder(
        scrollDirection: Axis.horizontal,
        controller: ctrl,
        itemBuilder: (context, index) {
          if (index == 0) {
            return _buildTagPage();
          } else if (5 >= index) {
            bool active = index == currentPage;
            return _buildStoryPage(active);
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }

  _buildTagPage() {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Events',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text('FILTER', style: TextStyle(color: Colors.black26)),
        // _buildButton('favorites'),
        // _buildButton('happy'),
        // _buildButton('sad')
      ],
    ));
  }

  _buildStoryPage(bool active) {
    // Animated Properties
    final double blur = active ? 30 : 0;
    final double offset = active ? 20 : 0;
    final double top = active ? 100 : 200;

    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeOutQuint,
      margin: EdgeInsets.only(top: top, bottom: 50, right: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              "https://xnodzdyvvfytarydsjvq.supabase.co/storage/v1/object/public/the-bucket/thumbnails/events/lake.jpg"),
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.black87,
              blurRadius: blur,
              offset: Offset(offset, offset))
        ],
      ),
    );
  }

  // _buildButton(tag) {
  //   // Color color = tag == activeTag ? Colors.purple : Colors.white;
  //   return FlatButton(
  //     onPressed: () {},
  //     color: secondary,
  //     child: Text('#$tag'),
  //     // onPressed: () => _queryDb(tag: tag)
  //   );
  // }
}
