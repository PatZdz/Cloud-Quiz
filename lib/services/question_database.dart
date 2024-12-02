import 'package:hive/hive.dart';
import '../models/question_model.dart';
import '../data/questions.dart';

class QuestionDatabase {
  static const String boxName = 'questions';
  
  Future<void> initDatabase() async {
    final box = await Hive.openBox<QuestionModel>(boxName);
    
    if (box.isEmpty) {
      await _initializeQuestionsFromData(box);
    }
  }

  Future<void> _initializeQuestionsFromData(Box<QuestionModel> box) async {
    for (var q in allQuestions) {
      final questionModel = QuestionModel(
        id: q.id,
        topic: q.topic,
        question: q.question,
        options: q.options,
        correctAnswerIndex: q.correctAnswerIndex,
        secondCorrectAnswerIndex: q.secondCorrectAnswerIndex,
      );
      await box.add(questionModel);
    }
  }

  List<QuestionModel> getAllQuestions() {
    final box = Hive.box<QuestionModel>(boxName);
    return box.values.toList();
  }

  List<QuestionModel> getRandomQuestions(int count) {
    final allQuestions = getAllQuestions();
    allQuestions.shuffle();
    return allQuestions.take(count).toList();
  }
}
