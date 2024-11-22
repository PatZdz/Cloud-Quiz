import 'package:flutter/material.dart';
import 'question_number_selection_screen.dart'; // Zmiana tutaj

class ExamSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Ekran z wyborem paczki pytań
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Question Pack'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Questions 1-50'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => QuestionNumberSelectionScreen()),
            );
          },
        ),
      ),
    );
  }
}