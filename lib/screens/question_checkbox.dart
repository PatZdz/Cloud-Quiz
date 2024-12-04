import 'package:flutter/material.dart';
import '../constants/app_constants.dart';
import 'question_slider.dart';

class QuestionCheckbox extends StatefulWidget {
  const QuestionCheckbox({super.key});

  @override
  _QuestionCheckboxState createState() => _QuestionCheckboxState();
}

class _QuestionCheckboxState extends State<QuestionCheckbox> {
  List<bool> selectedRanges = [false, false, false, false, false];
  
  List<Map<String, int>> ranges = [
    {'start': 1, 'end': 10},
    {'start': 11, 'end': 20},
    {'start': 21, 'end': 30},
    {'start': 31, 'end': 40},
    {'start': 41, 'end': 50},
  ];

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
