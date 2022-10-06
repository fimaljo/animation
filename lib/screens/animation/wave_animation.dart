// import 'dart:math';

// import 'package:flutter/material.dart';

// class MyWidget extends StatefulWidget {
//   const MyWidget({Key? key}) : super(key: key);

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           _rotationAngle += pi;
//           print(_rotationAngle);
//           setState(() {});
//         },
//       ),
//       body: Center(
//         child: TweenAnimationBuilder(
//           duration: Duration(milliseconds: 300),
//           tween: Tween<double>(begin: 0, end: _rotationAngle),
//           builder: (BuildContext context, double value, Widget child) {
//             return Transform.rotate(
//               angle: value,
//               child: child,
//             );
//           },
//           child: Container(
//             height: 500,
//             width: 50,
//             color: Colors.redAccent,
//           ),
//         ),
//       ),
//     );
//   }
// }
