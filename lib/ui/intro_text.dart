import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
              fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, fontSize: 30),
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
