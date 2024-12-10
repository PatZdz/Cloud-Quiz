import 'package:cloud_quiz/screens/exam_selection.dart';
import 'package:flutter/material.dart';
import '../widgets/app_button.dart';
import '../constants/app_constants.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cloud Exam Quiz'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppConstants.defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            AppButton(
              text: 'GCP',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ExamSelectionScreen()),
                );
              },
            ),
            const SizedBox(height: AppConstants.defaultSpacing),
            const AppButton(
              text: 'AWS',
              onPressed: null,
              isEnabled: false,
            ),
            const SizedBox(height: AppConstants.defaultSpacing),
            const AppButton(
              text: 'Azure',
              onPressed: null,
              isEnabled: false,
            ),
          ],
        ),
      ),
    );
  }
}