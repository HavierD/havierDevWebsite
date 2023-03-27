import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
          'Havier\'s Dev. Oddities Attic',
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
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 100),
        child: SingleChildScrollView(
          // scrollDirection: Axis.both,
          child: Scrollbar(
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 500,
                      child: IntroText(),
                    ),
                    Image.asset('assets/images/1.png'),
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

class IntroText extends StatelessWidget {
  const IntroText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const Text(
          "ABOUT ME: \n ",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
              fontSize: 30),
        ),
        const SelectableText(
          "I'm Havier, a self-proclaimed innovative software "
              "engineer who also works as a Software Developer for the "
              "Department of Natural Resources and Environment Tasmania."
              " In my free time, I love to dabble in some funny "
              "development projects, and I've gathered a few of my "
              "favorites here for my friends, curious visitors, and "
              "anyone else who might be interested. Take a peek inside "
              "my 'attic' and hover your mouse over some items to "
              "discover some fun surprises! And if you'd rather a "
              "straight way, the below list is here for you.",
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
          ),
        ),
        SelectableText.rich(
          TextSpan(
              style: const TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
              children: <TextSpan>[
                const TextSpan(text: " \nMy "),
                TextSpan(
                  text: "LinkedIn",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      await launchUrl(Uri.parse("https://www.linkedin"
                          ".com/in/huaizhi-dai/"));
                    },
                  style: const TextStyle(
                    color: Colors.cyan,
                    decoration: TextDecoration.underline,
                  ),
                ),
                const TextSpan(text: " and "),
                TextSpan(
                  text: "Github",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      await launchUrl(Uri.parse("https://github"
                          ".com/HavierD"));
                    },
                  style: const TextStyle(
                    color: Colors.cyan,
                    decoration: TextDecoration.underline,
                  ),
                ),
                const TextSpan(
                    text: " are here, if you are interested in "
                        "them."),
              ]),
        ),
      ],
    );
  }
}