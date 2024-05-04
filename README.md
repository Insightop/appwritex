[Beta] AppwriteX provides additional features to the Appwrite Dart SDK non-invasively.

[![Version](https://img.shields.io/pub/v/appwritex)](https://pub.dev/packages/appwritex)
[![CI](https://github.com/insightoptech/appwritex/actions/workflows/ci.yaml/badge.svg)](https://github.com/insightoptech/appwritex/actions/)
[![License](https://img.shields.io/github/license/insightoptech/appwritex)](https://github.com/insightoptech/appwritex/blob/main/LICENSE)

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

## Class

```dart
// Extension AvatarsX on Avatars Service
Avatars.getCardsCloud();         // Get card of a specific user ID
Avatars.getCardsCloudBack();     // Get card back of a specific user ID
Avatars.getCardsCloudOG();       // Get card OG of a specific user ID

// Console Service
Console.getVariables();          // Get all console variables

// Extension DatabasesX on Databases Service
Databases.getCollectionUsage();  // Get usage of a specific collection
Databases.getDatabaseUsage();    // Get usage of a specific database
Databases.getUsage();            // Get usage of all databases

// Extension FunctionsX on Functions Service
Functions.getFunctionUsage();    // Get usage of a specific function
Functions.getUsage();            // Get usage of all functions

// Extension HealthX on Health Service
Health.getStats();               // Get health stats

// Extension MessagingX on Messaging Service
Messaging.getUsage();            // Get usage of all messaging

// Project Service
Project.getVariables();          // Get all variables of a specific project
Project.getUsage();              // Get usage of a specific project

// Projects Service
Projects.list();                 // List all projects

// Proxy Service
Proxy.listRules();               // List all proxy rules

// Public Service
Public.getVersions();            // Get all version information
Public.getHealthVersion();       // Get health version information

// Extension StorageX on Storage Service
Storage.getBucketUsage();        // Get usage of a specific bucket
Storage.getUsage();              // Get usage of all storage

// Extension TeamsX on Teams Service
Teams.getUsage();                // Get usage of all teams

// Extension UsersX on Users Service
Users.getUsage();                // Get usage of all users

// Vcs Service
Vcs.listInstallations();         // List all VCS installations
```

You can also use the `Usage` class to get usage of all services.
The `Usage` class is a wrapper class that provides a single method to get usage of all services.

```dart
// Usage Service
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

[![Contributors](https://contrib.rocks/image?repo=insightoptech/appwritex)](https://github.com/insightoptech/appwritex/graphs/contributors)
