import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(),
      body: Center(child: bodyText()),
    );
  }

  AppBar appBarWidget() {
    return AppBar(
      title: const Text("Flutter"),
      actions: [iconButtonWidget()],
    );
  }

  IconButton iconButtonWidget() {
    return IconButton(
        onPressed: () {
          snackBarView();
        },
        icon: const Icon(Icons.notification_add));
  }

  void snackBarView() {
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Mohamed Keshawy")));
  }

  Text bodyText() {
    return Text(
      "Hello World : ${loop()}",
      style: const TextStyle(fontSize: 22.0),
    );
  }

  int loop() {
    for (int i = 0; i < 10; i++) {
      _counter = i + 1;
    }
    return _counter;
  }
}