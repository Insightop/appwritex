import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/src/enums.dart';
import '../models/models.dart';

extension DatabasesExt on Databases {
  /// Get Usage Collection
  ///
  /// Get usage information on a specific collection.
  Future<UsageCollection> getCollectionUsage({
    required String databaseId,
    required String collectionId,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/usage'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return UsageCollection.fromMap(res.data);
  }

  /// Get Usage Database
  ///
  /// Get usage information on the current project's database.
  Future<UsageDatabase> getDatabaseUsage({required String databaseId}) async {
    final String apiPath =
        '/databases/{databaseId}/usage'.replaceAll('{databaseId}', databaseId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return UsageDatabase.fromMap(res.data);
  }

  /// Get Usage Databases
  ///
  /// Get usage information on all of the current project's databases.
  Future<UsageDatabases> getUsage() async {
    final String apiPath = '/databases/usage';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return UsageDatabases.fromMap(res.data);
  }
}
