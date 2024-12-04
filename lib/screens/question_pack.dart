import 'package:flutter/material.dart';
import '../widgets/app_button.dart';
import '../constants/app_constants.dart';
import 'question_checkbox.dart';

class QuestionPackScreen extends StatelessWidget {
  const QuestionPackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select a question package'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppConstants.defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppButton(
              text: 'Questions 1-50',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuestionCheckbox(),
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