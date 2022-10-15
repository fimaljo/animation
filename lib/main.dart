import 'package:animation/database/database_notifier.dart';
import 'package:animation/database/event.controller.dart';
import 'package:animation/env.dart';
import 'package:animation/screens/animation/animated_builder.dart';
import 'package:animation/screens/animation/animated_container.dart';
import 'package:animation/screens/animation/home.dart';
import 'package:animation/screens/pageview/pageview_inunity.dart';
import 'package:animation/widgets/inunty.signup.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: DevConstants.SUPABASE_URL,
    anonKey: DevConstants.SUPABASE_ANON_KEY,
    authCallbackUrlHostname: 'login-callback',
    debug: true,
  );

  runApp(
      DevicePreview(enabled: !kReleaseMode, builder: ((context) => MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<EventController>(
          create: (_) => EventController(),
        ),
      ],
      child: MaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        title: 'Animation',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.blue,
        ),
        home: PageViewHome(),
      ),
    );
  }
}
// import 'dart:math';

// import 'package:flutter/material.dart';

// class SpritePainter extends CustomPainter {
//   final Animation<double> _animation;

//   SpritePainter(this._animation) : super(repaint: _animation);

//   void circle(Canvas canvas, Rect rect, double value) {
//     double opacity = (1.0 - (value / 3.0)).clamp(0.0, 1.0);
//     Color color = Color.fromRGBO(0, 117, 194, opacity);

//     double size = rect.width / 3.0;
//     double area = size * size;
//     double radius = sqrt(area * value / 4);

//     final Paint paint = Paint()..color = color;
//     canvas.drawCircle(rect.center, radius, paint);
//   }

//   @override
//   void paint(Canvas canvas, Size size) {
//     Rect rect = Rect.fromLTRB(0.0, 0.0, size.width, size.height);

//     for (int wave = 3; wave >= 0; wave--) {
//       circle(canvas, rect, wave + _animation.value);
//     }
//   }

//   @override
//   bool shouldRepaint(SpritePainter oldDelegate) {
//     return true;
//   }
// }

// class SpriteDemo extends StatefulWidget {
//   @override
//   SpriteDemoState createState() => SpriteDemoState();
// }

// class SpriteDemoState extends State<SpriteDemo>
//     with SingleTickerProviderStateMixin {
//   late final AnimationController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//     );
//     // setState(() {
//     //   _startAnimation();
//     // });
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   void _startAnimation() {
//     _controller
//       ..stop()
//       ..reset()
//       ..repeat(period: const Duration(seconds: 1));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Pulse')),
//       body: CustomPaint(
//         painter: SpritePainter(_controller),
//         child: Center(
//           child: SizedBox(
//             width: 100.0,
//             height: 100.0,
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _startAnimation,
//         child: new Icon(Icons.play_arrow),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(
//     MaterialApp(
//       home: SpriteDemo(),
//     ),
//   );
// }
