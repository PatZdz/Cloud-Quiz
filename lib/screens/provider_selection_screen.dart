import 'package:flutter/material.dart';
import 'exam_selection_screen.dart';

class ProviderSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Ekran z wyborem egzaminu GCP
    return Scaffold(
      appBar: AppBar(
        title: Text('Select GCP Exam'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('CDL'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ExamSelectionScreen()),
            );
          },
        ),
      ),
    );
  }
}