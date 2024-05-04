import 'package:appwritex/models.dart' as models;
import 'package:test/test.dart';

void main() {
  group('model', () {
    test('UsageCollection fromMap() toMap()', () {
      final model = models.UsageCollection(
          range: '30d',
          documentsTotal: 65535,
          documents: [
            models.Metric(
              value: 65535,
              date: DateTime.now().toIso8601String(),
            ),
          ]);
      final map = model.toMap();

      final result = models.UsageCollection.fromMap(map);
      expect(result.range, model.range);
      expect(result.documentsTotal, model.documentsTotal);
      expect(result.documents.length, model.documents.length);
    });
  });
}
