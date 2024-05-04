import 'package:test/test.dart';
import 'package:appwritex/models.dart' as models;

void main() {
  group('model', () {
    test('UsageStorage fromMap() toMap()', () {
      final usageStorage = models.UsageStorage(
        range: '30d',
        bucketsTotal: 65535,
        filesTotal: 65535,
        filesStorageTotal: 65535,
        buckets: [
          models.Metric(
            value: 65535,
            date: DateTime.now().toIso8601String(),
          ),
        ],
        files: [
          models.Metric(
            value: 65535,
            date: DateTime.now().toIso8601String(),
          ),
        ],
        storage: [
          models.Metric(
            value: 65535,
            date: DateTime.now().toIso8601String(),
          ),
        ],
      );
      final map = usageStorage.toMap();

      final result = models.UsageStorage.fromMap(map);
      expect(result.range, usageStorage.range);
      expect(result.bucketsTotal, usageStorage.bucketsTotal);
      expect(result.filesTotal, usageStorage.filesTotal);
      expect(result.filesStorageTotal, usageStorage.filesStorageTotal);
      expect(result.buckets, usageStorage.buckets);
      expect(result.files, usageStorage.files);
      expect(result.storage, usageStorage.storage);
    });
  });
}
