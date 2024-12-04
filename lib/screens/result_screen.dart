import 'package:cloud_quiz/models/question.dart';
import 'package:flutter/material.dart';
import '../widgets/app_button.dart';
import '../widgets/question_card.dart';
import '../constants/app_constants.dart';
import '../models/quiz_result.dart';
import 'quiz_screen.dart';

class ResultScreen extends StatelessWidget {
  final QuizResult quizResult;

  const ResultScreen({super.key, required this.quizResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Results'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppConstants.defaultPadding),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(AppConstants.defaultPadding),
              margin: const EdgeInsets.only(bottom: AppConstants.defaultPadding),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                borderRadius:
                    BorderRadius.circular(AppConstants.defaultBorderRadius),
              ),
              child: Text(
                'You got ${quizResult.correctAnswers} out of ${quizResult.questions.length} correct!',
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: quizResult.questions.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: AppConstants.defaultSpacing),
                itemBuilder: (context, index) {
                  Question question = quizResult.questions[index];
                  List<int> userAnswers = quizResult.selectedAnswers[index];
                  String userAnswer = userAnswers
                      .map((i) => question.options[i])
                      .join(', ');
                  bool isCorrect;

                  if (question.secondCorrectAnswerIndex != null) {
                    List<int> correctAnswers = [
                      question.correctAnswerIndex,
                      question.secondCorrectAnswerIndex!
                    ];
                    isCorrect = userAnswers.toSet().containsAll(correctAnswers) &&
                        userAnswers.length == correctAnswers.length;
                  } else {
                    isCorrect = userAnswers.isNotEmpty &&
                        userAnswers[0] == question.correctAnswerIndex;
                  }

                  return QuestionCard(
                    question: question,
                    userAnswer: userAnswer,
                    isCorrect: isCorrect,
                  );
                },
              ),
            ),
            const SizedBox(height: AppConstants.defaultSpacing),
            AppButton(
              text: 'Restart',
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        QuizScreen.withQuestions(questions: quizResult.questions),
                  ),
                );
              },
            ),
            const SizedBox(height: AppConstants.defaultSpacing),
            AppButton(
              text: 'Next Quiz',
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        QuizScreen(questionCount: quizResult.questions.length),
                  ),
                );
              },
            ),
            const SizedBox(height: AppConstants.defaultSpacing),
            AppTextButton(
              text: 'Home',
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
            ),
            const SizedBox(height: AppConstants.defaultSpacing),
          ],
        ),
      ),
    );
  }
}