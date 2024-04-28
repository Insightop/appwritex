import 'package:dart_appwrite/src/service.dart';
import 'package:dart_appwrite/src/enums.dart';
import 'package:appwritex/appwritex.dart';
import '../models/models.dart' as models;

class Public extends Service {
  Public(super.client);

  /// Get Versions(scope: public.read)
  ///
  /// Get a set of all the console's environment variables.
  @Deprecated('Not supported through dart sdk yet.')
  Future<models.Versions> getVersions() async {
    /// cloud.appwrite.io/versions
    final String apiPath = '/versions';

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
  Future<HealthVersion> getHealthVersion() async {
    final String apiPath = '/health/version';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return HealthVersion.fromMap(res.data);
  }
}
