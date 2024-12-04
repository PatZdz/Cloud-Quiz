import 'package:flutter/material.dart';
import '../models/question.dart';
import '../constants/app_constants.dart';

class QuestionCard extends StatelessWidget {
  final Question question;
  final String userAnswer;
  final bool isCorrect;

  const QuestionCard({super.key, 
    required this.question,
    required this.userAnswer,
    required this.isCorrect,
  });

  @override
  Widget build(BuildContext context) {
    // ...
String correctAnswer;
if (question.secondCorrectAnswerIndex != null) {
  correctAnswer = '${question.options[question.correctAnswerIndex]}, '
      '${question.options[question.secondCorrectAnswerIndex!]}';
} else {
  correctAnswer = question.options[question.correctAnswerIndex];
}
// ...

    return Container(
      padding: const EdgeInsets.all(AppConstants.defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.2)),
        borderRadius:
            BorderRadius.circular(AppConstants.defaultBorderRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  question.question,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Icon(
                isCorrect ? Icons.check_circle : Icons.cancel,
                color: isCorrect ? Colors.green : Colors.red,
                size: 28,
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            'Your answer: $userAnswer',
            style: TextStyle(
              color: Colors.grey[700],
              height: 1.5,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Correct answer: $correctAnswer',
            style: TextStyle(
              color: Colors.green[700],
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}