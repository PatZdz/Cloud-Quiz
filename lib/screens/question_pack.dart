import 'package:flutter/material.dart';
import '../widgets/app_button.dart';
import '../constants/app_constants.dart';
import 'question_range_selection_screen.dart';

class QuestionPackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a question package'),
      ),
      body: Padding(
        padding: EdgeInsets.all(AppConstants.defaultPadding),
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
                    builder: (context) => QuestionRangeSelectionScreen(),
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