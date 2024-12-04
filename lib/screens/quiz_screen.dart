import 'package:flutter/material.dart';
import '../widgets/app_button.dart';
import '../constants/app_constants.dart';
import '../models/question.dart';
import '../models/quiz_result.dart';
import '../data/questions.dart';
import 'result_screen.dart';

class QuizScreen extends StatefulWidget {
  final int? questionCount;
  final List<Question>? predefinedQuestions;
  final List<int>? selectedQuestionIds;

  QuizScreen({
    this.questionCount,
    this.selectedQuestionIds,
  }) : predefinedQuestions = null;

  QuizScreen.withQuestions({required List<Question> questions})
      : predefinedQuestions = questions,
        questionCount = questions.length,
        selectedQuestionIds = null;

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Question> questions = [];
  int currentQuestionIndex = 0;
  List<List<int>> selectedAnswers = [];
  List<int> temporaryAnswers = [];

  @override
  void initState() {
    super.initState();
    if (widget.predefinedQuestions != null) {
      questions = widget.predefinedQuestions!;
    } else {
      if (widget.selectedQuestionIds != null) {
        questions = allQuestions
            .where((q) => widget.selectedQuestionIds!.contains(q.id))
            .toList();
      } else {
        questions = List<Question>.from(allQuestions);
      }
      questions.shuffle();
      questions = questions.take(widget.questionCount ?? questions.length).toList();
    }
  }

  void selectAnswer(int index) {
    setState(() {
      Question currentQuestion = questions[currentQuestionIndex];
      if (currentQuestion.secondCorrectAnswerIndex != null) {
        if (temporaryAnswers.contains(index)) {
          temporaryAnswers.remove(index);
        } else {
          temporaryAnswers.add(index);
        }

        if (temporaryAnswers.length == 2) {
          selectedAnswers.add(List<int>.from(temporaryAnswers));
          temporaryAnswers.clear();

          if (currentQuestionIndex < questions.length - 1) {
            currentQuestionIndex++;
          } else {
            _showResults();
          }
        }
      } else {
        selectedAnswers.add([index]);
        if (currentQuestionIndex < questions.length - 1) {
          currentQuestionIndex++;
        } else {
          _showResults();
        }
      }
    });
  }

  void _showResults() {
    if (temporaryAnswers.isNotEmpty) {
      selectedAnswers.add(List<int>.from(temporaryAnswers));
      temporaryAnswers.clear();
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => ResultScreen(
          quizResult: QuizResult(
            questions: questions,
            selectedAnswers: selectedAnswers,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Question currentQuestion = questions[currentQuestionIndex];
    List<String> options = List<String>.from(currentQuestion.options);

    return Scaffold(
      appBar: AppBar(
        title: Text('Question ${currentQuestionIndex + 1}/${questions.length}'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppConstants.defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(AppConstants.defaultPadding),
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(AppConstants.defaultBorderRadius),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      currentQuestion.question,
                      style: TextStyle(fontSize: 18.0, height: 1.4),
                    ),
                    if (currentQuestion.secondCorrectAnswerIndex != null)
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          'Choose two correct answers',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(height: AppConstants.defaultSpacing * 2),
              ...options.asMap().entries.map((entry) {
                int index = entry.key;
                String text = entry.value;
                bool isSelected = temporaryAnswers.contains(index);

                return Padding(
                  padding: EdgeInsets.only(bottom: AppConstants.defaultSpacing),
                  child: AppButton(
                    text: text,
                    isSelected: isSelected,
                    onPressed: () => selectAnswer(index),
                  ),
                );
              }).toList(),
              SizedBox(height: AppConstants.defaultSpacing),
              const SizedBox(height: AppConstants.defaultSpacing),
              AppTextButton(
                text: 'Previous question',
                onPressed: currentQuestionIndex > 0 
                  ? () {
                      setState(() {
                        currentQuestionIndex--;
                        temporaryAnswers.clear();
                        if (selectedAnswers.isNotEmpty) {
                          selectedAnswers.removeLast();
                        }
                      });
                    }
                  : () {}, // Provide empty function when disabled
              ),
            ],
          ),
        ),
      ),
    );
  }}