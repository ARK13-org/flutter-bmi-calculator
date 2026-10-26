# Flutter BMI Calculator

A simple BMI (Body Mass Index) calculator mobile app built with Flutter and Dart. Enter your height and weight to calculate your BMI instantly and see your weight category through a clean, custom-designed interface.

## 📸 Screenshots

| Home Screen | BMI Result |
|:---:|:---:|
| ![BMI Calculator Home Screen](screenshots/bmi-home.png) | ![BMI Calculator Result Screen](screenshots/bmi-result.png) |

## ✨ Features

- Enter height and weight to calculate BMI.
- Calculate BMI with a single tap.
- Display the BMI result with two decimal places.
- Classify results into underweight, normal weight, and overweight categories.
- Display the result in a custom result card.
- Use a dark navy theme with teal accents.
- Feature custom decorative rounded bars.
- Run without an internet connection or backend.

## 🛠️ Tech Stack

- **Framework:** Flutter
- **Programming Language:** Dart
- **UI:** Material Design widgets
- **State Management:** StatefulWidget and setState
- **Dependencies:** Flutter SDK (no additional packages required)

## 📂 Project Structure

```text
lib/
├── main.dart
├── screens/
│   └── homepage.dart
└── bars/
    ├── leftbar.dart
    └── rightbar.dart

screenshots/
├── bmi-home.png
└── bmi-result.png
```

## 🚀 Getting Started

### Prerequisites

- Flutter SDK installed
- Dart SDK (included with Flutter)
- Android Studio, VS Code, or another supported IDE
- An Android emulator or a compatible physical device

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/ARK13-org/flutter-bmi-calculator.git
   ```

2. Navigate to the project directory:

   ```bash
   cd flutter-bmi-calculator
   ```

3. Install dependencies:

   ```bash
   flutter pub get
   ```

4. Run the application:

   ```bash
   flutter run
   ```

## 🧮 How It Works

1. Enter your height in meters (for example, `1.75`).
2. Enter your weight in kilograms.
3. Tap the **Calculate** button.
4. View your BMI result and corresponding weight category.

The BMI formula is:

```text
BMI = weight (kg) / height (m)²
```

### BMI Categories

| BMI Range | Category |
|---|---|
| Below 18.5 | Underweight |
| 18.5 to below 25 | Normal weight |
| 25 to below 30 | Overweight |
| 30 and above | Obesity |

These are standard adult BMI categories and are intended for general screening purposes.

## 🎨 Design

- **Background:** Deep navy (`#172554`)
- **Accent:** Teal (`#14B8A6`)
- **Result Card:** Rounded design with a teal background and white border after calculation
- **Decorative Elements:** Custom rounded bars with alternating widths

## 🗺️ Future Plans

I plan to expand this project by integrating a **FastAPI backend** to add user accounts and BMI history tracking.

Planned features include:

- **User Authentication:** Allow users to create accounts and securely access their personal records.
- **BMI History:** Save and retrieve previous BMI results.
- **BMI Comparison:** Compare current BMI results with previous records to track changes over time.
- **FastAPI REST API:** Connect the Flutter frontend to a backend built with FastAPI.
- **Database Integration:** Store user information and BMI history in a database.

These improvements will help evolve this project into a full-stack mobile application.

## ⚕️ Disclaimer

This application is for educational purposes only and is not a substitute for professional medical advice. BMI is a general screening tool and does not directly measure body fat or account for all factors affecting health.

## 👤 Author

**ARK13**

- GitHub: [@ARK13-org](https://github.com/ARK13-org)

## 📄 License

No license has been added yet. A license can be included in the repository in the future.
