import 'package:flutter/material.dart';

class AppButtonStyles {
  static final ButtonStyle primaryButton = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
    minimumSize: Size(double.infinity, 56),
  );

  static final ButtonStyle secondaryButton = TextButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
    minimumSize: Size(double.infinity, 56),
  );

  static final ButtonStyle selectedButton = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
    backgroundColor: Colors.blue,
    minimumSize: Size(double.infinity, 56),
  );
}