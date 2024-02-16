
# Flutter To-Do App

This Flutter application is a simple To-Do list manager, allowing users to add, edit, and delete tasks. It leverages Hive as the local database for efficient data storage and retrieval.

## Features

- Add new tasks with a title and description
- Edit existing tasks
- Mark tasks as completed
- Delete tasks
- Persistent storage using Hive database
- Clean and intuitive user interface

## Installation

1. Make sure you have Flutter installed. If not, follow the [official installation guide](https://flutter.dev/docs/get-started/install).
2. Clone this repository to your local machine.
3. Run `flutter pub get` in the project directory to install dependencies.
4. Connect your device or emulator and run `flutter run` to launch the app.

## Dependencies

- [Hive](https://pub.dev/packages/hive): A lightweight and efficient NoSQL database for Flutter, perfect for local storage needs.
- [Provider](https://pub.dev/packages/provider): State management library for Flutter applications, used here for managing the app's state.
- [Flutter Material Icons](https://fonts.google.com/icons): Google's official icon set for Flutter applications, providing a wide range of icons for UI elements.

## Getting Started

1. Upon launching the app, you'll be presented with the list of tasks.
2. Tap on the '+' button to add a new task. Fill in the title and description, then tap 'Save'.
3. To edit a task, simply tap on it in the list. Make your changes and tap 'Save'.
4. Mark a task as completed by tapping on the checkbox next to it.
5. To delete a task, swipe left on it in the list and confirm the action.

## Contributing

Contributions are welcome! If you'd like to contribute to this project, please follow these steps:

1. Fork the repository and create your branch from `main`.
2. Make your changes and test thoroughly.
3. Open a pull request describing your changes in detail.
