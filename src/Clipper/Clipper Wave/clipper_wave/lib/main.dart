import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ClipPath(
        clipper: CustomClipperPath(),
        child: Container(
          height: 200,
          color: Colors.orange,
        )
      ),
    );
  }
}

class CustomClipperPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double h = size.height;
    double w = size.width;

    final p = Path();

    p.moveTo(0, 0);
    p.lineTo(0, h);

    p.quadraticBezierTo(w / 4, h - 100, w / 2, h - 50);
    p.quadraticBezierTo(w / 1.45, h, w - 40, h - 40);
    p.quadraticBezierTo(w + 300, h - 200, w , h);

    p.lineTo(w, 0);

    p.close();

    return p;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {

    return false;
  }
}
