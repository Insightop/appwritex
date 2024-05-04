import 'package:test/test.dart';
import 'package:appwritex/models.dart' as models;

void main() {
  group('model', () {
    test('UsageDatabases fromMap() toMap()', () {
      final usageDatabases = models.UsageDatabases(
        range: '30d',
        databasesTotal: 65535,
        collectionsTotal: 65535,
        documentsTotal: 65535,
        databases: [
          models.Metric(
            value: 65535,
            date: DateTime.now().toIso8601String(),
          ),
        ],
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
      final map = usageDatabases.toMap();

      final result = models.UsageDatabases.fromMap(map);
      expect(result.range, usageDatabases.range);
      expect(result.databasesTotal, usageDatabases.databasesTotal);
      expect(result.collectionsTotal, usageDatabases.collectionsTotal);
      expect(result.documentsTotal, usageDatabases.documentsTotal);
      expect(result.databases, usageDatabases.databases);
      expect(result.collections, usageDatabases.collections);
      expect(result.documents, usageDatabases.documents);
    });
  });
}
