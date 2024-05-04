import 'package:test/test.dart';
import 'package:appwritex/models.dart' as models;

void main() {
  group('model', () {
    test('Metric fromMap() toMap()', () {
      final metric = models.Metric(
        value: 65535,
        date: DateTime.now().toIso8601String(),
      );

      final map = metric.toMap();

      final result = models.Metric.fromMap(map);
      expect(result.value, metric.value);
      expect(result.date, metric.date);
    });
  });
}
