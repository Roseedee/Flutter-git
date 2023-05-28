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
              FilledButton(
                onPressed: () {},
                child: const Text("Filled Button"),
              ),
              FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text("Filled Button has icon"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Elevated Button"),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                label: const Text("Elevated button has icon"),
                icon: const Icon(Icons.add),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text("Outlined Button"),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                label: const Text("Outlined button has icon"),
                icon: const Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Text Button"),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Text button has icon'),
              )
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
