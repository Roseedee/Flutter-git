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
      home: const MyHomePage(title: 'Text Widget'),
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
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              child: const Text(
                'text widget normal',
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              child: const Text(
                'text alignment left',
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              child: const Text(
                'text alignment right',
                textAlign: TextAlign.right,
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              child: const Text(
                'text alignment center',
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              child: const Text(
                'text font size 22 pixel',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              child: const Text(
                'text font weight is bold',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              child: const Text(
                'text font style is italic',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              child: const Text(
                'text color Green',
                style: TextStyle(color: Colors.green),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
