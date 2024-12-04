import 'package:flutter/material.dart';
import '../constants/app_constants.dart';
import 'question_slider.dart';

class QuestionCheckbox extends StatefulWidget {
  final int startId;
  final int endId;

  const QuestionCheckbox({
    super.key, 
    required this.startId, 
    required this.endId,
  });

  @override
  _QuestionCheckboxState createState() => _QuestionCheckboxState();
}

class _QuestionCheckboxState extends State<QuestionCheckbox> {
  late List<bool> selectedRanges;
  late List<Map<String, int>> ranges;

  @override
  void initState() {
    super.initState();
    _initializeRanges();
  }

  void _initializeRanges() {
    int totalQuestions = widget.endId - widget.startId + 1;
    int numberOfRanges = (totalQuestions <= 36) ? 3 : 5; // Special case for 251-286
    int questionsPerRange = (totalQuestions / numberOfRanges).ceil();

    ranges = [];
    selectedRanges = List.generate(numberOfRanges, (_) => false);

    for (int i = 0; i < numberOfRanges; i++) {
      int rangeStart = widget.startId + (i * questionsPerRange);
      int rangeEnd = rangeStart + questionsPerRange - 1;
      
      // Ensure the last range doesn't exceed the endId
      if (rangeEnd > widget.endId) {
        rangeEnd = widget.endId;
      }

      ranges.add({
        'start': rangeStart,
        'end': rangeEnd,
      });
    }
  }

  List<int> getSelectedQuestionIds() {
    List<int> ids = [];
    for (int i = 0; i < selectedRanges.length; i++) {
      if (selectedRanges[i]) {
        for (int id = ranges[i]['start']!; id <= ranges[i]['end']!; id++) {
          ids.add(id);
        }
      }
    }
    return ids;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select a range of questions'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppConstants.defaultPadding),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: ranges.length,
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                    title: Text('Questions ${ranges[index]['start']} - ${ranges[index]['end']}'),
                    value: selectedRanges[index],
                    onChanged: (bool? value) {
                      setState(() {
                        selectedRanges[index] = value ?? false;
                      });
                    },
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                List<int> selectedIds = getSelectedQuestionIds();
                if (selectedIds.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Select at least one range of questions'),
                    ),
                  );
                  return;
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuestionSlider(
                      selectedQuestionIds: selectedIds,
                    ),
                  ),
                );
              },
              child: const Text('Next'),
            ),
            const SizedBox(height: AppConstants.defaultPadding),
          ],
        ),
      ),
    );
  }
}