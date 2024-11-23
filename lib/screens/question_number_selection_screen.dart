import 'package:flutter/material.dart';
import '../widgets/app_button.dart';
import '../constants/app_constants.dart';
import 'quiz_screen.dart';

class QuestionNumberSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Number of Questions'),
      ),
      body: Padding(
        padding: EdgeInsets.all(AppConstants.defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            AppButton(
              text: '5 Random Questions',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => QuizScreen(questionCount: 5)),
                );
              },
            ),
            SizedBox(height: AppConstants.defaultSpacing),
            AppButton(
              text: '10 Random Questions',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => QuizScreen(questionCount: 10)),
                );
              },
            ),
            SizedBox(height: AppConstants.defaultSpacing),
            AppButton(
              text: '15 Random Questions',
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