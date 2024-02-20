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
          backgroundColor: const Color.fromARGB(250, 51, 51, 51),
          elevation: 1.0,
          centerTitle: true,
        ),
        body: const GradientContainer(
          Color.fromARGB(248, 51, 51, 51),
          Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    ),
  );
}
