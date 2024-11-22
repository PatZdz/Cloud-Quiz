class Question {
  final int id;
  final String topic;
  final String question;
  final List<String> options;
  final int correctAnswerIndex;

  Question({
    required this.id,
    required this.topic,
    required this.question,
    required this.options,
    required this.correctAnswerIndex,
  });
}