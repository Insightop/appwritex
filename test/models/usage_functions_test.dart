import 'package:test/test.dart';
import 'package:appwritex/models.dart' as models;

void main() {
  group('model', () {
    test('UsageFunctions fromMap() toMap()', () {
      final usageFunctions = models.UsageFunctions(
        range: '30d',
        functionsTotal: 65535,
        deploymentsTotal: 65535,
        deploymentsStorageTotal: 65535,
        buildsTotal: 65535,
        buildsStorageTotal: 65535,
        buildsTimeTotal: 65535,
        executionsTotal: 65535,
        executionsTimeTotal: 65535,
        functions: [
          models.Metric(
            value: 65535,
            date: DateTime.now().toIso8601String(),
          ),
        ],
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
      final map = usageFunctions.toMap();

      final result = models.UsageFunctions.fromMap(map);
      expect(result.range, usageFunctions.range);
      expect(result.functionsTotal, usageFunctions.functionsTotal);
      expect(result.deploymentsTotal, usageFunctions.deploymentsTotal);
      expect(result.deploymentsStorageTotal,
          usageFunctions.deploymentsStorageTotal);
      expect(result.buildsTotal, usageFunctions.buildsTotal);
      expect(result.buildsStorageTotal, usageFunctions.buildsStorageTotal);
      expect(result.buildsTimeTotal, usageFunctions.buildsTimeTotal);
      expect(result.executionsTotal, usageFunctions.executionsTotal);
      expect(result.executionsTimeTotal, usageFunctions.executionsTimeTotal);
      expect(result.functions, usageFunctions.functions);
      expect(result.deployments, usageFunctions.deployments);
      expect(result.deploymentsStorage, usageFunctions.deploymentsStorage);
      expect(result.builds, usageFunctions.builds);
      expect(result.buildsStorage, usageFunctions.buildsStorage);
      expect(result.buildsTime, usageFunctions.buildsTime);
      expect(result.executions, usageFunctions.executions);
      expect(result.executionsTime, usageFunctions.executionsTime);
    });
  });
}
