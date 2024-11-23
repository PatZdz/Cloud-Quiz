import 'package:flutter/material.dart';
import '../widgets/app_button.dart';
import '../constants/app_constants.dart';
import 'provider_selection_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cloud Exam Quiz'),
      ),
      body: Padding(
        padding: EdgeInsets.all(AppConstants.defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            AppButton(
              text: 'GCP',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProviderSelectionScreen()),
                );
              },
            ),
            SizedBox(height: AppConstants.defaultSpacing),
            AppButton(
              text: 'AWS',
              onPressed: null,
              isEnabled: false,
            ),
            SizedBox(height: AppConstants.defaultSpacing),
            AppButton(
              text: 'Azure',
              onPressed: null,
              isEnabled: false,
            ),
          ],
        ),
      ),
    );
  }
}