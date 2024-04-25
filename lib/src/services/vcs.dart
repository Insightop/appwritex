import 'package:meta/meta.dart';
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/src/service.dart';
import 'package:dart_appwrite/src/enums.dart';
import '../models/models.dart';

class Vcs extends Service {
  Vcs(super.client);

  /// List installations(Not officially API)
  ///
  /// Get a list of all the VCS (Version Control System) installations available
  @experimental
  Future<InstallationList> listInstallations() async {
    final String apiPath = '/vcs/installations';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return InstallationList.fromMap(res.data);
  }
}
