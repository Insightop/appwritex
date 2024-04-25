import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/src/service.dart';
import 'package:dart_appwrite/src/enums.dart';
import '../models/models.dart';

class Projects extends Service {
  Projects(super.client);

  /// List Projects
  ///
  /// Get a list of all the projects in the current team. You can use the query
  Future<ProjectList> list() async {
    final String apiPath = '/projects';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return ProjectList.fromMap(res.data);
  }
}
