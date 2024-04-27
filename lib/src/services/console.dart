import 'package:dart_appwrite/src/service.dart';
import 'package:dart_appwrite/src/enums.dart';
import '../models/models.dart' as models;

class Console extends Service {
  Console(super.client);

  /// Get Console Variables
  ///
  /// Get a set of all the console's environment variables.
  @Deprecated('Not supported through dart sdk yet.')
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
