import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/src/enums.dart';
import '../models/models.dart' as models;

extension StorageExt on Storage {
  /// Get bucket usage
  ///
  /// Get usage information on a specific storage bucket.
  Future<models.UsageBuckets> getBucketUsage({required String bucketId}) async {
    final String apiPath =
        '/storage/{bucketId}/usage'.replaceAll('{bucketId}', bucketId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.UsageBuckets.fromMap(res.data);
  }

  // /// Get Usage Buckets
  // ///
  // /// Get usage information on all of the current project's storage buckets.
  // Future<UsageBuckets> getBucketsUsage() async {
  //   final String apiPath = '/storage/usage';

  //   final Map<String, dynamic> apiParams = {};

  //   final Map<String, String> apiHeaders = {
  //     'content-type': 'application/json',
  //   };

  //   final res = await client.call(HttpMethod.get,
  //       path: apiPath, params: apiParams, headers: apiHeaders);

  //   return UsageBuckets.fromMap(res.data);
  // }

  /// Get Usage Storage
  ///
  /// Get usage information on the current project's storage.
  Future<models.UsageStorage> getUsage() async {
    final String apiPath = '/storage/usage';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.UsageStorage.fromMap(res.data);
  }
}
