part of appwritex;

class Public extends Service {
  Public(super.client);

  /// Get Versions(scope: public.read)
  ///
  /// Get a set of all the console's environment variables.
  Future<models.Versions> getVersions() async {
    /// cloud.appwrite.io/v1/../versions
    final String apiPath = '/../versions';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Versions.fromMap(res.data);
  }

  /// Get Health Version(scope: public.read)
  ///
  /// Get the current appwrite version by health check.
  Future<models.HealthVersion> getHealthVersion() async {
    final String apiPath = '/health/version';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.HealthVersion.fromMap(res.data);
  }
}
