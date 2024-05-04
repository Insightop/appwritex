import 'package:test/test.dart';
import 'package:appwritex/models.dart' as models;

void main() {
  group('model', () {
    test('UsageUsers fromMap() toMap()', () {
      final usageUsers = models.UsageUsers(
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
      );
      final map = usageUsers.toMap();

      final result = models.UsageUsers.fromMap(map);
      expect(result.range, usageUsers.range);
      expect(result.usersTotal, usageUsers.usersTotal);
      expect(result.sessionsTotal, usageUsers.sessionsTotal);
      expect(result.users, usageUsers.users);
      expect(result.sessions, usageUsers.sessions);
    });
  });
}
