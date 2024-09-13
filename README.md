[Beta] AppwriteX provides additional features to the Appwrite Dart SDK non-invasively.

[![Version](https://img.shields.io/pub/v/appwritex)](https://pub.dev/packages/appwritex)
[![CI](https://github.com/insightop/appwritex/actions/workflows/ci.yaml/badge.svg)](https://github.com/insightop/appwritex/actions/)
[![License](https://img.shields.io/github/license/insightop/appwritex)](https://github.com/insightop/appwritex/blob/main/LICENSE)

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

## Classes and methods

```dart
// Avatars
Avatars.getCardsCloud();         // Get card of a specific user ID
Avatars.getCardsCloudBack();     // Get card back of a specific user ID
Avatars.getCardsCloudOG();       // Get card OG of a specific user ID

// Console
Console.getVariables();          // Get all console variables

// Databases
Databases.getCollectionUsage();  // Get usage of a specific collection
Databases.getDatabaseUsage();    // Get usage of a specific database
Databases.getUsage();            // Get usage of all databases

// Functions
Functions.getFunctionUsage();    // Get usage of a specific function
Functions.getUsage();            // Get usage of all functions

// Health
Health.getStats();               // Get health stats

// Messaging
Messaging.getUsage();            // Get usage of all messaging

// Project
Project.getVariables();          // Get all variables of a specific project
Project.getUsage();              // Get usage of a specific project

// Projects
Projects.list();                 // List all projects

// Proxy
Proxy.listRules();               // List all proxy rules

// Public
Public.getVersions();            // Get all version information
Public.getHealthVersion();       // Get health version information

// Storage
Storage.getBucketUsage();        // Get usage of a specific bucket
Storage.getUsage();              // Get usage of all storage

// Teams
Teams.getUsage();                // Get usage of all teams
Teams.listLogs();                // List all team logs

// Users
Users.getUsage();                // Get usage of all users

// Vcs
Vcs.listInstallations();         // List all VCS installations
```

You can also use the `Usage` class to get usage of all services.
The `Usage` class is a wrapper class that provides a single method to get usage of all services.

```dart
// Usage
Usage.getCollectionUsage(); // Get usage of a specific collection
Usage.getDatabaseUsage();   // Get usage of a specific database
Usage.getDatabasesUsage();  // Get usage of all databases

Usage.getFunctionUsage();   // Get usage of a specific function
Usage.getFunctionsUsage();  // Get usage of all functions

Usage.getMessagingUsage();  // Get usage of all messaging

Usage.getProjectUsage();    // Get usage of a specific project

Usage.getBucketUsage();     // Get usage of a specific bucket
Usage.getStorageUsage();    // Get usage of all storage

Usage.getTeamsUsage();      // Get usage of all teams

Usage.getUsersUsage();      // Get usage of all users
```

## Contributors

[![Contributors](https://contrib.rocks/image?repo=insightop/appwritex)](https://github.com/insightop/appwritex/graphs/contributors)
