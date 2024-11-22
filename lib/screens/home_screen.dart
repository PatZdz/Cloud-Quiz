import 'package:flutter/material.dart';
import 'provider_selection_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Ekran główny z wyborem dostawcy chmury
    return Scaffold(
      appBar: AppBar(
        title: Text('Cloud Exam Quiz'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('GCP'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProviderSelectionScreen()),
                );
              },
            ),
            ElevatedButton(
              child: Text('AWS'),
              onPressed: null, // Na razie nieklikalne
            ),
            ElevatedButton(
              child: Text('Azure'),
              onPressed: null, // Na razie nieklikalne
            ),
          ],
        ),
      ),
    );
  }
}