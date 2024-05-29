import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class DropDownButton2 extends StatefulWidget {
  const DropDownButton2({super.key});

  @override
  State<DropDownButton2> createState() => _DropDownButton2State();
}

class _DropDownButton2State extends State<DropDownButton2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: Text('Animated Text '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText("Krishita Pandey",
                    textStyle: TextStyle(
                        color: Colors.purple, fontSize: 25, fontFamily: "Agne"),
                    speed: Duration(milliseconds: 200)),
              ],
              totalRepeatCount: 4,
              pause: Duration(milliseconds: 200),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
              repeatForever: true,
            ),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText("Be happy",
                    textStyle: TextStyle(fontSize: 20, fontFamily: "Agre"),
                    speed: Duration(milliseconds: 700)),
              ],
              totalRepeatCount: 4,
              pause: Duration(milliseconds: 150),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
              repeatForever: true,
            )
          ],
        ),
      ),
    );
  }
}
