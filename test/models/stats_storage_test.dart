import 'package:appwritex/models.dart' as models;
import 'package:test/test.dart';

void main() {
  group('model', () {
    test('StatsStorage fromMap() toMap()', () {
      final statsStorage = models.StatsStorage(
        used: '65535',
        partitionTotal: '65535',
        partitionFree: '65535',
      );

      final map = statsStorage.toMap();

      final result = models.StatsStorage.fromMap(map);

      expect(result.used, statsStorage.used);
      expect(result.partitionTotal, statsStorage.partitionTotal);
      expect(result.partitionFree, statsStorage.partitionFree);
    });
  });
}
