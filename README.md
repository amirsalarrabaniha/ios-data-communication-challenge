# Flutter iOS Data Communication

## 📌 Overview

This project demonstrates communication between **Flutter** and **iOS** using `MethodChannel`
and `EventChannel`. The app allows Flutter to send requests to iOS and receive real-time data
streams.

## 🏗 Architecture

The project follows **Clean Architecture** and consists of:

- **Data Layer**: Handles communication with iOS.
- **Domain Layer**: Manages business logic.
- **Presentation Layer**: Uses `Bloc/Cubit` for state management.

## 🚀 Features

- **MethodChannel** for sending commands from Flutter to iOS.
- **EventChannel** for receiving real-time data streams.
- **BLoC (Cubit)** for state management.
- **get_it** for Dependency Injection.

## 📂 Project Structure

```
lib/
 ├── core/
 │   ├── services/
 │   │   ├── method_channel_service.dart
 │   │   ├── event_channel_service.dart
 │   └── di/
 │       ├── service_locator.dart
 ├── feature/
 │   ├── ios_data/
 │   │   ├── cubit/
 │   │   │   ├── ios_data_cubit.dart
 │   │   │   ├── ios_data_state.dart
 │   │   ├── ui/
 │   │   │   ├── ios_data_screen.dart
 ├── main.dart
```

## 🛠 Setup & Installation

1. **Clone the Repository**
   ```sh
   git clone https://github.com/your-repo/flutter-ios-communication.git
   cd flutter-ios-communication
   ```

2. **Install Dependencies**
   ```sh
   flutter pub get
   ```

3. **Register Dependencies**
   ```dart
   setupLocator();
   ```

4. **Run the App**
   ```sh
   flutter run
   ```

## 🧪 Running Tests

To run unit tests:

```sh
flutter test
```

## 🎥 Video Demonstration
Watch the project demo here: https://drive.google.com/file/d/1NtnIQ6vXikm7h2FaDrelu3YWv-tx3A01/view?usp=sharing

## 📌 Key Technologies Used

- **Flutter** (Dart)
- **Swift** (iOS communication)
- **MethodChannel & EventChannel**
- **BLoC (Cubit)**
- **get_it** (DI)
- **Flutter Test & Bloc Test** (Testing)


