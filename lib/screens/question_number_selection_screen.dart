import 'package:flutter/material.dart';
import '../constants/app_constants.dart';
import 'quiz_screen.dart';

class QuestionNumberSelectionScreen extends StatefulWidget {
  final List<int> selectedQuestionIds;

  QuestionNumberSelectionScreen({required this.selectedQuestionIds});

  @override
  _QuestionNumberSelectionScreenState createState() => _QuestionNumberSelectionScreenState();
}

class _QuestionNumberSelectionScreenState extends State<QuestionNumberSelectionScreen> {
  late int questionCount;
  late int maxQuestions;

  @override
  void initState() {
    super.initState();
    maxQuestions = widget.selectedQuestionIds.length;
    questionCount = maxQuestions > 0 ? 1 : 0;
  }

  @override
  Widget build(BuildContext context) {
    if (maxQuestions == 0) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Select the number of questions'),
        ),
        body: Center(
          child: Text('No selected questions'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Select the number of questions'),
      ),
      body: Padding(
        padding: EdgeInsets.all(AppConstants.defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Selected number of questions: $questionCount',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: AppConstants.defaultSpacing),
            Slider(
              value: questionCount.toDouble(),
              min: 1,
              max: maxQuestions.toDouble(),
              divisions: maxQuestions - 1,
              label: questionCount.toString(),
              onChanged: (double value) {
                setState(() {
                  questionCount = value.toInt();
                });
              },
            ),
            SizedBox(height: AppConstants.defaultSpacing * 2),
            ElevatedButton(
              onPressed: maxQuestions > 0 ? () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizScreen(
                      questionCount: questionCount,
                      selectedQuestionIds: widget.selectedQuestionIds,
                    ),
                  ),
                );
              } : null,
              child: Text('Start Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}