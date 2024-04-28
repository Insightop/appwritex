import 'package:meta/meta.dart';
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/src/enums.dart';

import '../models/models.dart' as models;

extension HealthExt on Health {
  /// Get system stats(Internals)
  ///
  /// Get the system internal stats.
  @experimental
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
