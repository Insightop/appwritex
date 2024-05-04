import 'package:test/test.dart';
import 'package:appwritex/models.dart' as models;

void main() {
  group('model', () {
    test('HealthVersion fromMap() toMap()', () {
      final model = models.HealthVersion(
        version: '1.0.0',
      );
      final map = model.toMap();

      final result = models.HealthVersion.fromMap(map);
      expect(result.version, model.version);
    });
  });
}
