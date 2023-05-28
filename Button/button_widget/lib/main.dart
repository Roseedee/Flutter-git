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
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  print('Button clicked');
                },
                child: const Text("Elevated Button"),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                label: const Text("Elevated button has icon"),
                icon: const Icon(Icons.add),
              ),
              OutlinedButton(
                child: const Text("Outlined Button"),
                onPressed: () {},
              ),
              OutlinedButton.icon(
                onPressed: () {},
                label: const Text("Outlined button has icon"),
                icon: const Icon(Icons.add),
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {},
              ),
              TextButton(
                child: const Text("Text Button"),
                onPressed: () {},
              ),
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  label: const Text('Text button has icon'))
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
