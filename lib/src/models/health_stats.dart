import 'package:dart_appwrite/models.dart';
import 'models.dart';

/// Health Stats
class HealthStats implements Model {
  /// Storage
  final StatsStorage storage;

  /// Cache
  final StatsCache cache;

  HealthStats({
    required this.storage,
    required this.cache,
  });

  factory HealthStats.fromMap(Map<String, dynamic> map) {
    return HealthStats(
      storage: StatsStorage.fromMap(map['storage']),
      cache: StatsCache.fromMap(map['cache']),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "storage": storage.toMap(),
      "cache": cache.toMap(),
    };
  }
}

// https://github.com/appwrite/appwrite/blob/main/src/Appwrite/Utopia/Response/Model/HealthVersion.php


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
