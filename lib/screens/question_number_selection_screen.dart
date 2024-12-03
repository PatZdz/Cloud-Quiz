import 'package:flutter/material.dart';
import '../widgets/app_button.dart';
import '../constants/app_constants.dart';
import 'quiz_screen.dart';

class QuestionNumberSelectionScreen extends StatefulWidget {
  @override
  _QuestionNumberSelectionScreenState createState() => _QuestionNumberSelectionScreenState();
}

class _QuestionNumberSelectionScreenState extends State<QuestionNumberSelectionScreen> {
  double _questionCount = 10; // Domyślna wartość suwaka

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wybierz liczbę pytań'),
      ),
      body: Padding(
        padding: EdgeInsets.all(AppConstants.defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Liczba pytań: ${_questionCount.toInt()}',
              style: TextStyle(fontSize: 20),
            ),
            Slider(
              value: _questionCount,
              min: 1,
              max: 50,
              divisions: 49,
              label: _questionCount.toInt().toString(),
              onChanged: (double value) {
                setState(() {
                  _questionCount = value;
                });
              },
            ),
            SizedBox(height: AppConstants.defaultSpacing),
            AppButton(
              text: 'Start Quiz',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizScreen(questionCount: _questionCount.toInt()),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}