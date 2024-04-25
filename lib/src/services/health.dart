import 'package:consolify/extensions/models/health_version.dart';
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/src/enums.dart';

extension HealthExt on Health {
  /// Get version
  ///
  /// Check the Appwrite HTTP server is up and responsive.
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

// App::get('/v1/health/stats') // Currently only used internally
// ->desc('Get system stats')
//     ->groups(['api', 'health'])
//     ->label('scope', 'root')
//     // ->label('sdk.auth', [APP_AUTH_TYPE_KEY])
//     // ->label('sdk.namespace', 'health')
//     // ->label('sdk.method', 'getStats')
//     ->label('docs', false)
//     ->inject('response')
//     ->inject('register')
//     ->inject('deviceForFiles')
//     ->action(function (Response $response, Registry $register, Device $deviceForFiles) {

//         $cache = $register->get('cache');

//         $cacheStats = $cache->info();

//         $response
//             ->json([
//                 'storage' => [
//                     'used' => Storage::human($deviceForFiles->getDirectorySize($deviceForFiles->getRoot() . '/')),
//                     'partitionTotal' => Storage::human($deviceForFiles->getPartitionTotalSpace()),
//                     'partitionFree' => Storage::human($deviceForFiles->getPartitionFreeSpace()),
//                 ],
//                 'cache' => [
//                     'uptime' => $cacheStats['uptime_in_seconds'] ?? 0,
//                     'clients' => $cacheStats['connected_clients'] ?? 0,
//                     'hits' => $cacheStats['keyspace_hits'] ?? 0,
//                     'misses' => $cacheStats['keyspace_misses'] ?? 0,
//                     'memory_used' => $cacheStats['used_memory'] ?? 0,
//                     'memory_used_human' => $cacheStats['used_memory_human'] ?? 0,
//                     'memory_used_peak' => $cacheStats['used_memory_peak'] ?? 0,
//                     'memory_used_peak_human' => $cacheStats['used_memory_peak_human'] ?? 0,
//                 ],
//             ]);
//     });