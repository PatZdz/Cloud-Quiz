# cloud_quiz

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


lib/
├── constants/
│   └── app_constants.dart         # Stałe aplikacji
│
├── data/
│   └── questions.dart            # Baza pytań
│
├── models/
│   ├── question.dart             # Model pojedynczego pytania
│   └── quiz_result.dart          # Model wyniku quizu
│
├── screens/
│   ├── exam_selection_screen.dart        # Ekran wyboru egzaminu
│   ├── home_screen.dart                  # Ekran główny
│   ├── provider_selection_screen.dart    # Ekran wyboru dostawcy
│   ├── question_number_selection_screen.dart  # Ekran wyboru liczby pytań
│   ├── quiz_screen.dart                  # Ekran quizu
│   └── result_screen.dart                # Ekran wyników
│
├── styles/
│   ├── app_theme.dart            # Główny motyw aplikacji
│   └── button_styles.dart        # Style przycisków
│
├── widgets/
│   ├── app_button.dart           # Komponenty przycisków
│   └── question_card.dart        # Komponent karty pytania
│
└── main.dart                     # Punkt wejścia aplikacji