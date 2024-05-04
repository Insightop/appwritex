import 'package:test/test.dart';
import 'package:appwritex/models.dart' as models;

void main() {
  group('model', () {
    test('UsageBucket fromMap() toMap()', () {
      final model = models.UsageBucket(
        range: '30d',
        filesTotal: 65535,
        filesStorageTotal: 65535,
        files: [
          models.Metric(value: 65535, date: DateTime.now().toIso8601String()),
        ],
        storage: [
          models.Metric(value: 65535, date: DateTime.now().toIso8601String()),
        ],
      );
      final map = model.toMap();

      final result = models.UsageBucket.fromMap(map);
      expect(result.range, model.range);
      expect(result.filesTotal, model.filesTotal);
      expect(result.filesStorageTotal, model.filesStorageTotal);
      expect(result.files[0].value, model.files[0].value);
      expect(result.files[0].date, model.files[0].date);
      expect(result.storage[0].value, model.storage[0].value);
      expect(result.storage[0].date, model.storage[0].date);
    });
  });
}
