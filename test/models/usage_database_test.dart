import 'package:test/test.dart';
import 'package:appwritex/models.dart' as models;

void main() {
  group('model', () {
    test('UsageDatabase fromMap() toMap()', () {
      final usageDatabase = models.UsageDatabase(
        range: '30d',
        collectionsTotal: 65535,
        documentsTotal: 65535,
        collections: [
          models.Metric(
            value: 65535,
            date: DateTime.now().toIso8601String(),
          ),
        ],
        documents: [
          models.Metric(
            value: 65535,
            date: DateTime.now().toIso8601String(),
          ),
        ],
      );
      final map = usageDatabase.toMap();

      final result = models.UsageDatabase.fromMap(map);
      expect(result.range, usageDatabase.range);
      expect(result.collectionsTotal, usageDatabase.collectionsTotal);
      expect(result.documentsTotal, usageDatabase.documentsTotal);
      expect(result.collections, usageDatabase.collections);
      expect(result.documents, usageDatabase.documents);
    });
  });
}
