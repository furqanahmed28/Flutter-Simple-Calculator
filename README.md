# Flutter Simple Calulaotr

A minimal Flutter demo app to showcase Simple Calculator.

## Features
### Dynamic Calculator UI
Create a simple calculator interface using a Column and Row for button layouts, with FloatingActionButton widgets for number and operator input.

### Input Display
Displays the current input and result dynamically on the screen using Text widgets, updated every time a user taps a button.

### Basic Arithmetic Operations
Supports basic arithmetic operations: addition, subtraction, multiplication, and division, using +, -, *, / buttons.

### Clear Functionality
A button that clears the current input and resets the result to zero using the C button.

### Point Support
Allows the entry of decimal points, ensuring accurate floating-point arithmetic with the . button.

### Result Calculation
The = button calculates the result based on the user input by parsing the string using a custom Calculator function.

## Built With
### StatefulWidget
Utilizes StatefulWidget to manage dynamic state for the display, result, and input during calculation.

### Text Widgets for Display
Displays the current input and result dynamically, updating as the user interacts with the calculator.

### FloatingActionButton for Calculator Buttons
Uses FloatingActionButton widgets to create a clean, interactive button interface for digits and operators.

### String Parsing for Arithmetic Calculation
Custom logic is implemented in the Calculator function to parse and compute the result of arithmetic expressions.

### SetState for UI Updates
The setState() function is called every time the user interacts with the calculator, ensuring the UI is updated with the latest input and results.

## Getting Started

### Prerequisites

Make sure Flutter is installed on your system:

```bash
flutter doctor
```

If not installed, follow the official installation guide:Flutter Install Guide

### Installation Procedure

Follow these steps to run the app locally on your Windows/macOS/Linux system:

### Clone the repository:

```bash
git clone https://github.com/furqanahmed28/flutter-simple-calculator.git
```

### Navigate to the project directory:

```bash
cd flutter-simple-calculator
```
### Get all dependencies:

```bash
flutter pub get
```

### (Optional) Check for connected devices:

```bash
flutter devices
```

### Run the app:

```bash
flutter run
```

📱 You can run it on Android Emulator, iOS Simulator, or a physical device.


## 📝 License

This project is open source.
