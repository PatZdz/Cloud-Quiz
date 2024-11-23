import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'styles/app_theme.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cloud Exam Quiz',
      theme: AppTheme.lightTheme,
      home: HomeScreen(),
    );
  }
}