import 'package:test/test.dart';
import 'package:appwritex/models.dart' as models;

void main() {
  group('model', () {
    test('StatsCache fromMap() toMap()', () {
      final map = {
        'uptime': 100,
        'clients': 10,
        'hits': 50,
        'misses': 20,
        'memoryUsed': 1024,
        'memoryUsedHuman': '1 KB',
        'memoryUsedPeak': 2048,
        'memoryUsedPeakHuman': '2 KB',
      };

      final result = models.StatsCache.fromMap(map);

      expect(result.uptime, equals(100));
      expect(result.clients, equals(10));
      expect(result.hits, equals(50));
      expect(result.misses, equals(20));
      expect(result.memoryUsed, equals(1024));
      expect(result.memoryUsedHuman, equals('1 KB'));
      expect(result.memoryUsedPeak, equals(2048));
      expect(result.memoryUsedPeakHuman, equals('2 KB'));
    });

    test('toMap() should correctly serialize the object', () {
      final statsCache = models.StatsCache(
        uptime: 100,
        clients: 10,
        hits: 50,
        misses: 20,
        memoryUsed: 1024,
        memoryUsedHuman: '1 KB',
        memoryUsedPeak: 2048,
        memoryUsedPeakHuman: '2 KB',
      );

      final result = statsCache.toMap();

      expect(result['uptime'], equals(100));
      expect(result['clients'], equals(10));
      expect(result['hits'], equals(50));
      expect(result['misses'], equals(20));
      expect(result['memoryUsed'], equals(1024));
      expect(result['memoryUsedHuman'], equals('1 KB'));
      expect(result['memoryUsedPeak'], equals(2048));
      expect(result['memoryUsedPeakHuman'], equals('2 KB'));
    });
  });
}
