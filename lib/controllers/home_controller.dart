import 'package:flutter/material.dart';
import '../views/levels_view.dart';

class HomeController {
  void navigateToLevels(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LevelsView()),
    );
  }
}