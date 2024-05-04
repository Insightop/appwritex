part of appwritex;

extension StorageX on Storage {
  /// Get bucket usage
  ///
  /// Get usage information on a specific storage bucket.
  Future<models.UsageBuckets> getBucketUsage({
    required String bucketId,
    String? range,
  }) async {
    final String apiPath =
        '/storage/{bucketId}/usage'.replaceAll('{bucketId}', bucketId);

    final Map<String, dynamic> apiParams = {
      'range': range,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.UsageBuckets.fromMap(res.data);
  }

  /// Get Usage Storage
  ///
  /// Get usage information on the current project's storage.
  Future<models.UsageStorage> getUsage({
    String? range,
  }) async {
    final String apiPath = '/storage/usage';

    final Map<String, dynamic> apiParams = {
      'range': range,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.UsageStorage.fromMap(res.data);
  }
}
