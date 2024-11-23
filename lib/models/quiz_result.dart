import 'question.dart';

class QuizResult {
  final List<Question> questions;
  final List<List<int>> selectedAnswers;
  final int correctAnswers;

  QuizResult({
    required this.questions,
    required this.selectedAnswers,
  }) : correctAnswers = _calculateCorrectAnswers(questions, selectedAnswers);

  static int _calculateCorrectAnswers(
      List<Question> questions, List<List<int>> selectedAnswers) {
    int correct = 0;
    for (int i = 0; i < questions.length; i++) {
      Question question = questions[i];
      List<int> userAnswers = selectedAnswers[i];

      if (question.secondCorrectAnswerIndex != null) {
        List<int> correctAnswers = [
          question.correctAnswerIndex,
          question.secondCorrectAnswerIndex!
        ];

        if (userAnswers.toSet().containsAll(correctAnswers) &&
            userAnswers.length == correctAnswers.length) {
          correct++;
        }
      } else {
        if (userAnswers.isNotEmpty &&
            userAnswers[0] == question.correctAnswerIndex) {
          correct++;
        }
      }
    }
    return correct;
  }
}