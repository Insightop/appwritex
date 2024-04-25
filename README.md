<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

AppwriteX provides additional features to the Appwrite Dart SDK non-invasively.

## Features

- **AppwriteX** extends the Appwrite Dart SDK with additional features.

## Getting started

1. Add this package to your `pubspec.yaml` file:

```yaml
dependencies:
  dart_appwrite: ^<latest_version>
  appwritex: ^1.0.0
```

2. Install the package by running `dart pub get`.
3. Import the package in your Dart code:

```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:appwritex/appwritex.dart';
```

4. Use the package in your code:

```dart
void main() async {
  final client = Client()
      .setEndpoint('http://localhost/v1')
      .setProject('fedcba9876543210')
      .setKey('0123456789abcdef');
    final users = Users(client);
    final usersUsage = await users.getUsage();    // users.getUsage() is provided by AppwriteX
    print(usersUsage.toMap());
}
```

## Usage

```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:appwritex/appwritex.dart';

void main() async {
  final client = Client()
      .setEndpoint('http://localhost/v1')
      .setProject('fedcba9876543210')
      .setKey('0123456789abcdef');
  final users = Users(client);
  final usersUsage = await users.getUsage();    // users.getUsage() is provided by AppwriteX
  print(usersUsage.toMap());
}

```

## Additional information

Some features in this package are experimental and may not work as expected.
