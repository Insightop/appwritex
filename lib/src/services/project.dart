part of appwritex;

/// Use this scope need based on the Account module.
class Project extends Service {
  Project(super.client);

  /// Get Usage (scope: projects.read)
  ///
  /// Get usage information on the current project.
  @Deprecated('API is not available yet.')
  Future<models.UsageProject> getUsage({
    String? range,
  }) async {
    final String apiPath = '/project/usage';

    final Map<String, dynamic> apiParams = {
      'range': range,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.UsageProject.fromMap(res.data);
  }

  /// Get variables (scope: projects.read)
  ///
  /// Get a list of all the project's environment variables.
  @Deprecated('API is not available yet.')
  Future<models.VariableList> getVariables() async {
    final String apiPath = '/project/variables';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.VariableList.fromMap(res.data);
  }
}
