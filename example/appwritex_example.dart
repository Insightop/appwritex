import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:appwritex/appwritex.dart';

void main() async {
  final client = Client()
      .setEndpoint('http://localhost/v1')
      .setProject('fedcba9876543210')
      .setKey('0123456789abcdef');
  final users = Users(client);
  final usersUsage =
      await users.getUsage(); // users.getUsage() is provided by AppwriteX
  print(usersUsage.toMap());
}
