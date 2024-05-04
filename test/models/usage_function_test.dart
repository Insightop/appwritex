import 'package:test/test.dart';
import 'package:appwritex/models.dart' as models;

void main() {
  group('model', () {
    test('UsageFunction fromMap() toMap()', () {
      final usageFunction = models.UsageFunction(
        range: '30d',
        deploymentsTotal: 65535,
        deploymentsStorageTotal: 65535,
        buildsTotal: 65535,
        buildsStorageTotal: 65535,
        buildsTimeTotal: 65535,
        executionsTotal: 65535,
        executionsTimeTotal: 65535,
        deployments: [
          models.Metric(
            value: 65535,
            date: DateTime.now().toIso8601String(),
          ),
        ],
        deploymentsStorage: [
          models.Metric(
            value: 65535,
            date: DateTime.now().toIso8601String(),
          ),
        ],
        builds: [
          models.Metric(
            value: 65535,
            date: DateTime.now().toIso8601String(),
          ),
        ],
        buildsStorage: [
          models.Metric(
            value: 65535,
            date: DateTime.now().toIso8601String(),
          ),
        ],
        buildsTime: [
          models.Metric(
            value: 65535,
            date: DateTime.now().toIso8601String(),
          ),
        ],
        executions: [
          models.Metric(
            value: 65535,
            date: DateTime.now().toIso8601String(),
          ),
        ],
        executionsTime: [
          models.Metric(
            value: 65535,
            date: DateTime.now().toIso8601String(),
          ),
        ],
      );
      final map = usageFunction.toMap();

      final result = models.UsageFunction.fromMap(map);
      expect(result.range, usageFunction.range);
      expect(result.deploymentsTotal, usageFunction.deploymentsTotal);
      expect(result.deploymentsStorageTotal,
          usageFunction.deploymentsStorageTotal);
      expect(result.buildsTotal, usageFunction.buildsTotal);
      expect(result.buildsStorageTotal, usageFunction.buildsStorageTotal);
      expect(result.buildsTimeTotal, usageFunction.buildsTimeTotal);
      expect(result.executionsTotal, usageFunction.executionsTotal);
      expect(result.executionsTimeTotal, usageFunction.executionsTimeTotal);
      expect(result.deployments, usageFunction.deployments);
      expect(result.deploymentsStorage, usageFunction.deploymentsStorage);
      expect(result.builds, usageFunction.builds);
      expect(result.buildsStorage, usageFunction.buildsStorage);
      expect(result.buildsTime, usageFunction.buildsTime);
      expect(result.executions, usageFunction.executions);
      expect(result.executionsTime, usageFunction.executionsTime);
    });
  });
}
