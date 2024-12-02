import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'models/question_model.dart';
import 'services/question_database.dart';
import 'screens/home_screen.dart';
import 'styles/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(QuestionModelAdapter());
  
  final questionDB = QuestionDatabase();
  await questionDB.initDatabase();
  
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cloud Exam Quiz',
      theme: AppTheme.lightTheme,
      home: HomeScreen(),
    );
  }
}