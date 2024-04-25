import 'package:dart_appwrite/src/service.dart';
import 'package:dart_appwrite/src/enums.dart';
import '../models/models.dart' as models;

@Deprecated('Not supported through dart sdk yet.')
class Project extends Service {
  Project(super.client);

  /// Get Usage
  ///
  /// Get usage information on the current project.
  @Deprecated('Not supported through dart sdk yet.')
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

  /// Get variables
  ///
  /// Get a list of all the project's environment variables.
  @Deprecated('Not supported through dart sdk yet.')
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
