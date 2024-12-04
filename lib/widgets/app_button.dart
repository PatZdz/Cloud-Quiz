import 'package:flutter/material.dart';
import '../styles/button_styles.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isEnabled;
  final bool isSelected;

  const AppButton({super.key, 
    required this.text,
    required this.onPressed,
    this.isEnabled = true,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style;
    if (!isEnabled) {
      style = AppButtonStyles.primaryButton.copyWith(
        backgroundColor: WidgetStateProperty.all(Colors.grey),
      );
    } else if (isSelected) {
      style = AppButtonStyles.selectedButton;
    } else {
      style = AppButtonStyles.primaryButton;
    }

    return ElevatedButton(
      style: style,
      onPressed: isEnabled ? onPressed : null,
      child: Text(text),
    );
  }
}

class AppTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const AppTextButton({super.key, 
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: AppButtonStyles.secondaryButton,
      onPressed: onPressed,
      child: Text(text),
    );
  }
}