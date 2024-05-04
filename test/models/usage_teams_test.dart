import 'package:test/test.dart';
import 'package:appwritex/models.dart' as models;

void main() {
  group('model', () {
    test('UsageTeams fromMap() toMap()', () {
      final usageTeams = models.UsageTeams(
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
      );
      final map = usageTeams.toMap();

      final result = models.UsageTeams.fromMap(map);
      expect(result.range, usageTeams.range);
      expect(result.teamsTotal, usageTeams.teamsTotal);
      expect(result.membershipsTotal, usageTeams.membershipsTotal);
      expect(result.teams, usageTeams.teams);
      expect(result.memberships, usageTeams.memberships);
    });
  });
}
