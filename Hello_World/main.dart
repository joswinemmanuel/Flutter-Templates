import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 119, 255, 0),
                Color.fromARGB(255, 247, 255, 3),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: const Center(
            child: Text(
              'HELLO WORLD',
              style: 
              TextStyle(
                color: Color.fromARGB(250, 52, 52, 52),
                fontWeight: FontWeight.normal,
                fontSize: 40.0,
                shadows: [
                  Shadow(
                    color: Color.fromARGB(250, 0, 0, 0),
                    blurRadius: 5.0,
                    offset: Offset(3.0, 3.0),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
