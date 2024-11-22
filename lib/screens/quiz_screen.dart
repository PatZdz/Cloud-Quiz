import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';
import '../models/question.dart';
import '../data/questions.dart';

class QuizScreen extends StatefulWidget {
  final int questionCount;

  QuizScreen({required this.questionCount});

  @override
  _QuizScreenState createState() =>
      _QuizScreenState(questionCount: questionCount);
}

class _QuizScreenState extends State<QuizScreen> {
  final int questionCount;
  List<Question> questions = [];
  int currentQuestionIndex = 0;
  List<int> selectedAnswers = [];

  _QuizScreenState({required this.questionCount});

  @override
  void initState() {
    super.initState();
    // Wylosuj pytania
    questions = List<Question>.from(allQuestions);
    questions.shuffle();
    questions = questions.take(questionCount).toList();
  }

  void selectAnswer(int index) {
    setState(() {
      selectedAnswers.add(index);
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
        // Koniec quizu
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ResultScreen(
                    questions: questions,
                    selectedAnswers: selectedAnswers,
                  )),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Question currentQuestion = questions[currentQuestionIndex];
    List<String> options = List<String>.from(currentQuestion.options);
    options.shuffle();

    return Scaffold(
      appBar: AppBar(
        title: Text('Question ${currentQuestionIndex + 1}/${questions.length}'),
        leading: BackButton(),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              currentQuestion.question,
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 20),
            ...options.asMap().entries.map((entry) {
              int idx = entry.key;
              String text = entry.value;
              return ElevatedButton(
                child: Text(text),
                onPressed: () {
                  int originalIndex =
                      currentQuestion.options.indexOf(text);
                  selectAnswer(originalIndex);
                },
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}

class ResultScreen extends StatelessWidget {
  final List<Question> questions;
  final List<int> selectedAnswers;

  ResultScreen({required this.questions, required this.selectedAnswers});

  @override
  Widget build(BuildContext context) {
    int correct = 0;
    for (int i = 0; i < questions.length; i++) {
      if (selectedAnswers[i] == questions[i].correctAnswerIndex) {
        correct++;
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Results'),
        leading: BackButton(),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              'You got $correct out of ${questions.length} correct!',
              style: TextStyle(fontSize: 22.0),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  bool isCorrect = selectedAnswers[index] ==
                      questions[index].correctAnswerIndex;
                  return ListTile(
                    title: Text(questions[index].question),
                    subtitle: Text(
                      'Your answer: ${questions[index].options[selectedAnswers[index]]}\n'
                      'Correct answer: ${questions[index].options[questions[index].correctAnswerIndex]}',
                    ),
                    trailing: Icon(
                      isCorrect ? Icons.check : Icons.close,
                      color: isCorrect ? Colors.green : Colors.red,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}