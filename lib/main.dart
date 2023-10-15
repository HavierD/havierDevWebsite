import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:havier_personal_website/ui/attic_box.dart';
import 'package:url_launcher/url_launcher.dart';

import 'ui/intro_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Havier',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Raleway',
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
        backgroundColor: const Color.fromRGBO(173, 125, 52, 0.8),
        centerTitle: true,
        title: Text(
          'Havier\'s Dev. Attic',
          style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                    blurRadius: 7,
                    color: Colors.black.withOpacity(0.9),
                    offset: const Offset(3, 3)),
              ]),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Center(
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const SizedBox(width: 100),
                    const SizedBox(
                      width: 500,
                      child: IntroText(),
                    ),
                    const SizedBox(width: 100),
                    AtticBox(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

