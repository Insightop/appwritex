import 'package:appwritex/models.dart' as models;
import 'package:test/test.dart';

void main() {
  group('model', () {
    test('MetricBreakdown fromMap() toMap()', () {
      final model = models.MetricBreakdown(
        resourceId: 'test_id',
        name: 'test_name',
        value: '65535',
      );
      final map = model.toMap();

      final result = models.MetricBreakdown.fromMap(map);
      expect(result.resourceId, model.resourceId);
      expect(result.name, model.name);
      expect(result.value, model.value);
    });
  });
}
