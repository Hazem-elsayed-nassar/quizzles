import 'dart:async';
import 'package:flutter/material.dart';
import '../views/levels_view.dart';

class SplashController {
  void initTimer(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LevelsView()),
      );
    });
  }
}