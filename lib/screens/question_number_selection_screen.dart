import 'package:flutter/material.dart';
import 'quiz_screen.dart';

class QuestionNumberSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Ekran z wyborem liczby losowych pytań
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Number of Questions'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('5 Random Questions'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => QuizScreen(questionCount: 5)),
                );
              },
            ),
            ElevatedButton(
              child: Text('10 Random Questions'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => QuizScreen(questionCount: 10)),
                );
              },
            ),
            ElevatedButton(
              child: Text('15 Random Questions'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => QuizScreen(questionCount: 15)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}