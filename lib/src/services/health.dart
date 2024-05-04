part of appwritex;

extension HealthX on Health {
  /// Get system stats(Internals)
  ///
  /// Get the system internal stats.
  @Deprecated('Need scope: root')
  Future<models.HealthStats> getStats() async {
    final String apiPath = '/health/stats';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.HealthStats.fromMap(res.data);
  }
}
