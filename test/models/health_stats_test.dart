import 'package:appwritex/models.dart' as models;
import 'package:test/test.dart';

void main() {
  group('model', () {
    test('HealthStats fromMap() toMap()', () {
      final model = models.HealthStats(
        storage: models.StatsStorage(
          used: 'used',
          partitionTotal: 'partitionTotal',
          partitionFree: 'partitionFree',
        ),
        cache: models.StatsCache(
          uptime: 65535,
          clients: 65535,
          hits: 65535,
          misses: 65535,
          memoryUsed: 65535,
          memoryUsedHuman: 'memoryUsedHuman',
          memoryUsedPeak: 65535,
          memoryUsedPeakHuman: 'memoryUsedPeakHuman',
        ),
      );
      final map = model.toMap();

      final result = models.HealthStats.fromMap(map);
      expect(result.storage.used, model.storage.used);
      expect(result.storage.partitionTotal, model.storage.partitionTotal);
      expect(result.storage.partitionFree, model.storage.partitionFree);
      expect(result.cache.uptime, model.cache.uptime);
      expect(result.cache.clients, model.cache.clients);
      expect(result.cache.hits, model.cache.hits);
      expect(result.cache.misses, model.cache.misses);
      expect(result.cache.memoryUsed, model.cache.memoryUsed);
      expect(result.cache.memoryUsedHuman, model.cache.memoryUsedHuman);
      expect(result.cache.memoryUsedPeak, model.cache.memoryUsedPeak);
      expect(result.cache.memoryUsedPeakHuman, model.cache.memoryUsedPeakHuman);
    });
  });
}
