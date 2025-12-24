import 'package:flutter/material.dart';
import 'package:quizzles/views/levels_view.dart';
class Quizzie extends StatelessWidget {
  const Quizzie({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LevelsView(),
    );
  }
}