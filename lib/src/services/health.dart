import 'package:meta/meta.dart';
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/src/enums.dart';
import 'package:appwritex/appwritex.dart';

extension HealthExt on Health {
  /// Get version(Public)
  ///
  /// Check the Appwrite HTTP server is up and responsive.
  @experimental
  Future<HealthVersion> getVersion() async {
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
