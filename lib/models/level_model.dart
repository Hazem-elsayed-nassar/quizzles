import 'package:flutter/material.dart';

class Level {
  final int id;
  final String title;
  final int totalStars;
  final int earnedStars;
  final bool isLocked;
  final Color backgroundColor;

  Level({
    required this.id,
    required this.title,
    required this.totalStars,
    required this.earnedStars,
    required this.isLocked,
    required this.backgroundColor,
  });
}