import 'package:flutter/material.dart';
import '../widgets/app_button.dart';
import 'question_pack.dart';

class ExamSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select GCP Exam'),
      ),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppButton(
              text: 'CDL',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => QuestionPackScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
