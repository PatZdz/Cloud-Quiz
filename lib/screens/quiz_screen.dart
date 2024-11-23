import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';
import '../models/question.dart';
import '../data/questions.dart';

class QuizScreen extends StatefulWidget {
  final int? questionCount;
  final List<Question>? predefinedQuestions;

  QuizScreen({this.questionCount}) : predefinedQuestions = null;
  
  QuizScreen.withQuestions({required List<Question> questions})
      : predefinedQuestions = questions,
        questionCount = questions.length;

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Question> questions = [];
  int currentQuestionIndex = 0;
  List<int> selectedAnswers = [];
  List<int> temporaryAnswers = [];

  @override
  void initState() {
    super.initState();
    if (widget.predefinedQuestions != null) {
      questions = widget.predefinedQuestions!;
    } else {
      questions = List<Question>.from(allQuestions);
      questions.shuffle();
      questions = questions.take(widget.questionCount!).toList();
    }
  }

  void selectAnswer(int index) {
    setState(() {
      if (questions[currentQuestionIndex].id == 7) {
        if (temporaryAnswers.contains(index)) {
          temporaryAnswers.remove(index);
        } else if (temporaryAnswers.length < 2) {
          temporaryAnswers.add(index);
          if (temporaryAnswers.length == 2) {
            selectedAnswers.add(-1); // Specjalny marker dla pytania z wieloma odpowiedziami
            if (currentQuestionIndex < questions.length - 1) {
              currentQuestionIndex++;
              temporaryAnswers.clear();
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultScreen(
                    questions: questions,
                    selectedAnswers: selectedAnswers,
                    multipleAnswers: temporaryAnswers,
                  ),
                ),
              );
            }
          }
        }
      } else {
        selectedAnswers.add(index);
        if (currentQuestionIndex < questions.length - 1) {
          currentQuestionIndex++;
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResultScreen(
                questions: questions,
                selectedAnswers: selectedAnswers,
                multipleAnswers: temporaryAnswers,
              ),
            ),
          );
        }
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      currentQuestion.question,
                      style: TextStyle(fontSize: 18.0, height: 1.4),
                    ),
                    if (currentQuestion.id == 7)
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          'Select two correct answers',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(height: 32),
              ...options.asMap().entries.map((entry) {
                String text = entry.value;
                int originalIndex = currentQuestion.options.indexOf(text);
                bool isSelected = temporaryAnswers.contains(originalIndex);
                
                return Padding(
                  padding: EdgeInsets.only(bottom: 16.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                      backgroundColor: isSelected ? Colors.blue : null,
                    ),
                    child: Text(
                      text,
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      selectAnswer(originalIndex);
                    },
                  ),
                );
              }).toList(),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

class ResultScreen extends StatelessWidget {
  final List<Question> questions;
  final List<int> selectedAnswers;
  final List<int> multipleAnswers;

  ResultScreen({
    required this.questions,
    required this.selectedAnswers,
    required this.multipleAnswers,
  });

  @override
  Widget build(BuildContext context) {
    int correct = 0;
    for (int i = 0; i < questions.length; i++) {
      if (questions[i].id == 7) {
        if (multipleAnswers.contains(0) && multipleAnswers.contains(3)) {
          correct++;
        }
      } else if (selectedAnswers[i] == questions[i].correctAnswerIndex) {
        correct++;
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Results'),
        leading: BackButton(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.only(bottom: 24.0),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Text(
                'You got $correct out of ${questions.length} correct!',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: questions.length,
                separatorBuilder: (context, index) => SizedBox(height: 16),
                itemBuilder: (context, index) {
                  bool isCorrect = questions[index].id == 7 ?
                    (multipleAnswers.contains(0) && multipleAnswers.contains(3)) :
                    selectedAnswers[index] == questions[index].correctAnswerIndex;
                  
                  return Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.withOpacity(0.2)),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                questions[index].question,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(
                              isCorrect ? Icons.check_circle : Icons.cancel,
                              color: isCorrect ? Colors.green : Colors.red,
                              size: 28,
                            ),
                          ],
                        ),
                        SizedBox(height: 12),
                        if (questions[index].id == 7)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Your answers:',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  height: 1.5,
                                ),
                              ),
                              ...multipleAnswers.map((answerIndex) => Text(
                                '- ${questions[index].options[answerIndex]}',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  height: 1.5,
                                ),
                              )).toList(),
                              Text(
                                'Correct answers:',
                                style: TextStyle(
                                  color: Colors.green[700],
                                  height: 1.5,
                                ),
                              ),
                              Text(
                                '- ${questions[index].options[0]}\n- ${questions[index].options[3]}',
                                style: TextStyle(
                                  color: Colors.green[700],
                                  height: 1.5,
                                ),
                              ),
                            ],
                          )
                        else
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Your answer: ${questions[index].options[selectedAnswers[index]]}',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  height: 1.5,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Correct answer: ${questions[index].options[questions[index].correctAnswerIndex]}',
                                style: TextStyle(
                                  color: Colors.green[700],
                                  height: 1.5,
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizScreen.withQuestions(questions: questions),
                    ),
                  );
                },
                child: Text('Restart', style: TextStyle(fontSize: 18)),
              ),
            ),
            SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizScreen(questionCount: questions.length),
                    ),
                  );
                },
                child: Text('Next Quiz', style: TextStyle(fontSize: 18)),
              ),
            ),
            SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                child: Text('Home', style: TextStyle(fontSize: 18)),
              ),
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
