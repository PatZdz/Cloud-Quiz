import 'package:cloud_quiz/widgets/app_button.dart';
import 'package:flutter/material.dart';
import '../constants/app_constants.dart';
import 'quiz_screen.dart';

class QuestionSlider extends StatefulWidget {
  final List<int> selectedQuestionIds;

  const QuestionSlider({super.key, required this.selectedQuestionIds});

  @override
  _QuestionSliderState createState() => _QuestionSliderState();
}

class _QuestionSliderState extends State<QuestionSlider> {
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
          title: const Text('Select the number of questions'),
        ),
        body: const Center(
          child: Text('No selected questions'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Select the number of questions'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppConstants.defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Selected number of questions: $questionCount',
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppConstants.defaultSpacing),
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
            const SizedBox(height: AppConstants.defaultSpacing * 2),
            AppButton(
              text: 'Start Quiz',
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
              isEnabled: maxQuestions > 0,
            ),
          ],
        ),
      ),
    );
  }
}