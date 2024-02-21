// ignore_for_file: avoid_unnecessary_containers

import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
        colours: [
          Color.fromARGB(255, 31, 0, 63),
          Color.fromARGB(255, 84, 0, 168),
        ],
      ),
    ),
  ));
}
