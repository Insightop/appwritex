part of appwritex;

class Console extends Service {
  Console(super.client);

  /// Get Console Variables(scope: projects.read)
  ///
  /// Get a set of all the console's environment variables.
  @Deprecated('Need scope: projects.read')
  Future<models.ConsoleVariables> getVariables() async {
    final String apiPath = '/console/variables';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ConsoleVariables.fromMap(res.data);
  }
}
