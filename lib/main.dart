import 'package:flutter/material.dart';
import 'views/home_view.dart';

void main() {
  runApp(const QuizzlesApp());
}

class QuizzlesApp extends StatelessWidget {
  const QuizzlesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}