import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:  banner()),
    );
  }

  MaterialBanner materialBanner() {
    return const MaterialBanner(
      padding: EdgeInsets.all(20),
      content: Text('Hello, I am a Material Banner'),
      leading: Icon(Icons.agriculture_outlined),
      backgroundColor: Color(0xFFE0E0E0),
      actions: <Widget>[
        TextButton(
          onPressed: null,
          child: Text('OPEN'),
        ),
        TextButton(
          onPressed: null,
          child: Text('DISMISS'),
        ),
      ],
    );
  }

  Banner banner() {
    return Banner(
      message: "message",
      location: BannerLocation.topStart,
      child: Container(
        width: 200,
        height: 200,
        color: Colors.blue,
        child: const Center(
            child: Text("Keshawy")
        ),
      ),
    );
  }
}
