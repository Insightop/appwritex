import 'package:test/test.dart';
import 'package:appwritex/models.dart' as models;

void main() {
  group('model', () {
    test('Usage fromMap() toMap()', () {
      final usage = models.Usage(
        databases: models.UsageDatabases(
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
        ),
        functions: models.UsageFunctions(
          range: '30d',
          functionsTotal: 65535,
          executionsTotal: 65535,
          deploymentsTotal: 65535,
          deploymentsStorageTotal: 65535,
          buildsTotal: 65535,
          buildsStorageTotal: 65535,
          buildsTimeTotal: 65535,
          executionsTimeTotal: 65535,
          functions: [
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
          executionsTime: [
            models.Metric(
              value: 65535,
              date: DateTime.now().toIso8601String(),
            ),
          ],
        ),
        messaging: models.UsageMessaging(
          range: '30d',
          messagesTotal: 65535,
          topicsTotal: 65535,
          providersTotal: 65535,
          subscriberTotal: 65535,
          messages: [
            models.Metric(
              value: 65535,
              date: DateTime.now().toIso8601String(),
            ),
          ],
          topics: [
            models.Metric(
              value: 65535,
              date: DateTime.now().toIso8601String(),
            ),
          ],
          providers: [
            models.Metric(
              value: 65535,
              date: DateTime.now().toIso8601String(),
            ),
          ],
          subscribers: [
            models.Metric(
              value: 65535,
              date: DateTime.now().toIso8601String(),
            ),
          ],
        ),
        storage: models.UsageStorage(
          range: '30d',
          bucketsTotal: 65535,
          filesTotal: 65535,
          filesStorageTotal: 65535,
          buckets: [
            models.Metric(
              value: 65535,
              date: DateTime.now().toIso8601String(),
            ),
          ],
          files: [
            models.Metric(
              value: 65535,
              date: DateTime.now().toIso8601String(),
            ),
          ],
          storage: [
            models.Metric(
              value: 65535,
              date: DateTime.now().toIso8601String(),
            ),
          ],
        ),
        teams: models.UsageTeams(
          range: '30d',
          teamsTotal: 65535,
          membershipsTotal: 65535,
          teams: [
            models.Metric(
              value: 65535,
              date: DateTime.now().toIso8601String(),
            ),
          ],
          memberships: [
            models.Metric(
              value: 65535,
              date: DateTime.now().toIso8601String(),
            ),
          ],
        ),
        users: models.UsageUsers(
          range: '30d',
          usersTotal: 65535,
          sessionsTotal: 65535,
          users: [
            models.Metric(
              value: 65535,
              date: DateTime.now().toIso8601String(),
            ),
          ],
          sessions: [
            models.Metric(
              value: 65535,
              date: DateTime.now().toIso8601String(),
            ),
          ],
        ),
      );
      final map = usage.toMap();

      final result = models.Usage.fromMap(map);
      expect(result.databases, usage.databases);
    });
  });
}
