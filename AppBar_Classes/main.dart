import 'package:flutter/material.dart';
import 'package:roll_dice/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'App Bar',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color.fromARGB(250, 52, 52, 52),
          elevation: 1.0,
          centerTitle: true,
        ),
        body: const GradientContainer(
          colors: [
            Color.fromARGB(255, 119, 255, 0),
            Color.fromARGB(255, 246, 255, 0),
            Color.fromARGB(255, 252, 85, 85),
          ],
        ),
      ),
    ),
  );
}
