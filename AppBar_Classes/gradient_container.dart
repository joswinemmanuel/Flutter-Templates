import 'package:flutter/material.dart';
import 'package:roll_dice/shadowed_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: const Center(
        child: ShadowedText('Hello World'),
      ),
    );
  }
}
