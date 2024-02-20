import 'package:flutter/material.dart';

class ShadowedText extends StatelessWidget {
  const ShadowedText(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Color.fromARGB(249, 255, 255, 255),
        fontWeight: FontWeight.normal,
        fontSize: 30.0,
        shadows: [
          Shadow(
            color: Color.fromARGB(250, 0, 0, 0),
            blurRadius: 5.0,
            offset: Offset(3.0, 3.0),
          ),
        ],
      ),
    );
  }
}
