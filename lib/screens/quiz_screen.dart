import 'package:flutter/material.dart';
import '../widgets/app_button.dart';
import '../constants/app_constants.dart';
import '../models/question.dart';
import '../models/quiz_result.dart';
import '../data/questions.dart';
import 'result_screen.dart';
import 'dart:async';

class QuizScreen extends StatefulWidget {
  final int? questionCount;
  final List<Question>? predefinedQuestions;
  final List<int>? selectedQuestionIds;
  final bool isSampleExam; // Add this

  const QuizScreen({
    super.key, 
    this.questionCount,
    this.selectedQuestionIds,
    this.isSampleExam = false, // Add this with default false
  }) : predefinedQuestions = null;

  const QuizScreen.withQuestions({super.key, required List<Question> questions})
      : predefinedQuestions = questions,
        questionCount = questions.length,
        selectedQuestionIds = null,
        isSampleExam = false;
  @override
  _QuizScreenState createState() => _QuizScreenState();
}


class _QuizScreenState extends State<QuizScreen> {
  List<Question> questions = [];
  int currentQuestionIndex = 0;
  List<List<int>> selectedAnswers = [];
  List<int> temporaryAnswers = [];
  Timer? _timer;
  Duration _remainingTime = const Duration(hours: 1, minutes: 30);
  
  get options => null;

  @override
  void initState() {
    super.initState();
    if (widget.isSampleExam) {
      startTimer();
    }
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

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingTime.inSeconds > 0) {
          _remainingTime = _remainingTime - const Duration(seconds: 1);
        } else {
          _timer?.cancel();
          _showResults();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String _formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String hours = twoDigits(duration.inHours);
    String minutes = twoDigits(duration.inMinutes.remainder(60));
    String seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$hours:$minutes:$seconds";
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
    // Add null check and provide empty list as fallback
    List<String> options = currentQuestion.options;
    return Scaffold(
      appBar: AppBar(
        title: Text('Question ${currentQuestionIndex + 1}/${questions.length}'),
        actions: [
          if (widget.isSampleExam)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Center(
                child: Text(
                  _formatTime(_remainingTime),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppConstants.defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(AppConstants.defaultPadding),
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(AppConstants.defaultBorderRadius),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      currentQuestion.question,
                      style: const TextStyle(fontSize: 18.0, height: 1.4),
                    ),
                    if (currentQuestion.secondCorrectAnswerIndex != null)
                      const Padding(
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
              const SizedBox(height: AppConstants.defaultSpacing * 2),
              ...options.asMap().entries.map((entry) {
                int index = entry.key;
                String text = entry.value;
                bool isSelected = temporaryAnswers.contains(index);

                return Padding(
                  padding: const EdgeInsets.only(bottom: AppConstants.defaultSpacing),
                  child: AppButton(
                    text: text,
                    isSelected: isSelected,
                    onPressed: () => selectAnswer(index),
                  ),
                );
              }),
              const SizedBox(height: AppConstants.defaultSpacing),
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
                  : () {},
              ),
            ],
          ),
        ),
      ),
    );
  }}