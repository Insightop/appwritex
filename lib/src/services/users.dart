import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/src/enums.dart';
import '../models/models.dart' as models;

extension UsersExt on Users {
  /// Get Usage Users
  ///
  /// Get usage information on the current project's users.
  Future<models.UsageUsers> getUsage({
    String? range,
  }) async {
    final String apiPath = '/users/usage';

    final Map<String, dynamic> apiParams = {
      'range': range,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.UsageUsers.fromMap(res.data);
  }
}
