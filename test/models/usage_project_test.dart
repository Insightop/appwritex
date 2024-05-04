import 'package:test/test.dart';
import 'package:appwritex/models.dart' as models;

void main() {
  group('model', () {
    test('UsageProject fromMap() toMap()', () {
      final usageProject = models.UsageProject(
        executionsTotal: 65535,
        documentsTotal: 65535,
        databasesTotal: 65535,
        usersTotal: 65535,
        filesStorageTotal: 65535,
        bucketsTotal: 65535,
        requests: [
          models.Metric(
            value: 65535,
            date: DateTime.now().toIso8601String(),
          ),
        ],
        network: [
          models.Metric(
            value: 65535,
            date: DateTime.now().toIso8601String(),
          ),
        ],
        users: [
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
        executionsBreakdown: [
          models.MetricBreakdown(
            resourceId: '65535',
            name: '65535',
            value: '65535',
          ),
        ],
        bucketsBreakdown: [
          models.MetricBreakdown(
            resourceId: '65535',
            name: '65535',
            value: '65535',
          ),
        ],
      );
      final map = usageProject.toMap();

      final result = models.UsageProject.fromMap(map);
      expect(result.executionsTotal, usageProject.executionsTotal);
      expect(result.documentsTotal, usageProject.documentsTotal);
      expect(result.databasesTotal, usageProject.databasesTotal);
      expect(result.usersTotal, usageProject.usersTotal);
      expect(result.filesStorageTotal, usageProject.filesStorageTotal);
      expect(result.bucketsTotal, usageProject.bucketsTotal);
      expect(result.requests, usageProject.requests);
      expect(result.network, usageProject.network);
      expect(result.users, usageProject.users);
      expect(result.executions, usageProject.executions);
      expect(result.executionsBreakdown, usageProject.executionsBreakdown);
      expect(result.bucketsBreakdown, usageProject.bucketsBreakdown);
    });
  });
}
