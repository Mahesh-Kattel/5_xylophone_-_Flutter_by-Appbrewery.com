import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Xylophone extends StatefulWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void musicSelect(int soundNumber) {
    //final player = AudioCache();
    AudioPlayer().play(AssetSource('assets_note$soundNumber.wav'));
  }

  codeReusability(Color color, int number) {
    return Expanded(
        child: GestureDetector(
      onTap: () {
        musicSelect(number);
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          width: double.infinity,
          color: color,
        ),
      ),
    ));
  }

  bool show = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Column(
        children: [
          codeReusability(Colors.black, 1),
          codeReusability(Colors.red, 2),
          codeReusability(Colors.green, 3),
          codeReusability(Colors.blue, 4),
          codeReusability(Colors.orange, 5),
          codeReusability(Colors.pink, 6),
          codeReusability(Colors.brown, 7),
        ],
      ))),
    );
  }
}
