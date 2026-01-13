import 'package:flutter/material.dart';
import 'package:udemy_first_app/gradient_container.dart';


void main() {
  runApp(
   const  MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: [
          Color.fromARGB(255, 1, 45, 82),
           Color.fromARGB(255, 80, 1, 94)
        ]),
      ),
    ),
  );
}
