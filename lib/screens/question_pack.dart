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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppButton(
                text: 'Questions 1-50',
                onPressed: () => _navigateToCheckbox(context, 1, 50),
              ),
              const SizedBox(height: AppConstants.defaultSpacing),
              AppButton(
                text: 'Questions 51-100',
                onPressed: () => _navigateToCheckbox(context, 51, 100),
              ),
              const SizedBox(height: AppConstants.defaultSpacing),
              AppButton(
                text: 'Questions 101-150',
                onPressed: () => _navigateToCheckbox(context, 101, 150),
              ),
              const SizedBox(height: AppConstants.defaultSpacing),
              AppButton(
                text: 'Questions 151-200',
                onPressed: () => _navigateToCheckbox(context, 151, 200),
              ),
              const SizedBox(height: AppConstants.defaultSpacing),
              AppButton(
                text: 'Questions 201-250',
                onPressed: () => _navigateToCheckbox(context, 201, 250),
              ),
              const SizedBox(height: AppConstants.defaultSpacing),
              AppButton(
                text: 'Questions 251-286',
                onPressed: () => _navigateToCheckbox(context, 251, 286),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToCheckbox(BuildContext context, int start, int end) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => QuestionCheckbox(startId: start, endId: end),
      ),
    );
  }
}