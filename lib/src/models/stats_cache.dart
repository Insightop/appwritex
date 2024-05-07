part of appwritex.models;

/// Stats Cache
class StatsCache with EquatableMixin implements Model {
  /// Uptime
  final int uptime;

  /// Clients
  final int clients;

  /// Hits
  final int hits;

  /// Misses
  final int misses;

  /// Memory Used
  final int memoryUsed;

  /// Memory Used Human
  final String memoryUsedHuman;

  /// Memory Used Peak
  final int memoryUsedPeak;

  /// Memory Used Peak Human
  final String memoryUsedPeakHuman;

  StatsCache({
    required this.uptime,
    required this.clients,
    required this.hits,
    required this.misses,
    required this.memoryUsed,
    required this.memoryUsedHuman,
    required this.memoryUsedPeak,
    required this.memoryUsedPeakHuman,
  });
  factory StatsCache.fromMap(Map<String, dynamic> map) {
    return StatsCache(
      uptime: map['uptime'],
      clients: map['clients'],
      hits: map['hits'],
      misses: map['misses'],
      memoryUsed: map['memoryUsed'],
      memoryUsedHuman: map['memoryUsedHuman'],
      memoryUsedPeak: map['memoryUsedPeak'],
      memoryUsedPeakHuman: map['memoryUsedPeakHuman'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "uptime": uptime,
      "clients": clients,
      "hits": hits,
      "misses": misses,
      "memoryUsed": memoryUsed,
      "memoryUsedHuman": memoryUsedHuman,
      "memoryUsedPeak": memoryUsedPeak,
      "memoryUsedPeakHuman": memoryUsedPeakHuman,
    };
  }

  @override
  List<Object> get props => [
        uptime,
        clients,
        hits,
        misses,
        memoryUsed,
        memoryUsedHuman,
        memoryUsedPeak,
        memoryUsedPeakHuman,
      ];
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
