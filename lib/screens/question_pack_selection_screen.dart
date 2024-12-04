import 'package:flutter/material.dart';
import '../models/question.dart';
import '../data/questions.dart';
import 'quiz_screen.dart';

class QuestionPackSelectionScreen extends StatefulWidget {
  const QuestionPackSelectionScreen({super.key});

  @override
  _QuestionPackSelectionScreenState createState() => _QuestionPackSelectionScreenState();
}

class _QuestionPackSelectionScreenState extends State<QuestionPackSelectionScreen> {
  List<bool> selectedPacks = [false, false, false, false, false];
  int questionCount = 10;

  List<List<Question>> questionPacks = [
    allQuestions.sublist(0, 10),
    allQuestions.sublist(10, 20),
    allQuestions.sublist(20, 30),
    allQuestions.sublist(30, 40),
    allQuestions.sublist(40, 50),
  ];

  void _startQuiz() {
    List<Question> selectedQuestions = [];
    for (int i = 0; i < selectedPacks.length; i++) {
      if (selectedPacks[i]) {
        selectedQuestions.addAll(questionPacks[i]);
      }
    }
    selectedQuestions.shuffle();
    selectedQuestions = selectedQuestions.take(questionCount).toList();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => QuizScreen.withQuestions(questions: selectedQuestions),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Question Packs'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ...List.generate(selectedPacks.length, (index) {
              return CheckboxListTile(
                title: Text('Questions from ${index * 10 + 1} do ${index == 4 ? 50 : (index + 1) * 10}'),
                value: selectedPacks[index],
                onChanged: (bool? value) {
                  setState(() {
                    selectedPacks[index] = value ?? false;
                  });
                },
              );
            }),
            const SizedBox(height: 20),
            Text('Select the number of questions: $questionCount'),
            Slider(
              value: questionCount.toDouble(),
              min: 1,
              max: selectedPacks.where((selected) => selected).length * 10.0,
              divisions: selectedPacks.where((selected) => selected).length * 10,
              label: questionCount.toString(),
              onChanged: (double value) {
                setState(() {
                  questionCount = value.toInt();
                });
              },
            ),
            ElevatedButton(
              onPressed: _startQuiz,
              child: const Text('Start Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
