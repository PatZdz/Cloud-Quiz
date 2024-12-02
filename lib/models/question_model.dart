import 'package:hive/hive.dart';

part 'question_model.g.dart';

@HiveType(typeId: 0)
class QuestionModel extends HiveObject {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String topic;

  @HiveField(2)
  final String question;

  @HiveField(3)
  final List<String> options;

  @HiveField(4)
  final int correctAnswerIndex;

  @HiveField(5)
  final int? secondCorrectAnswerIndex;

  QuestionModel({
    required this.id,
    required this.topic,
    required this.question,
    required this.options,
    required this.correctAnswerIndex,
    this.secondCorrectAnswerIndex,
  });
}
