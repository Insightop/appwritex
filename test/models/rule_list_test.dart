import 'package:appwritex/models.dart' as models;
import 'package:test/test.dart';

void main() {
  group('model', () {
    test('RuleList fromMap() toMap()', () {
      final rule = models.Rule(
        $id: 'test_id',
        $createdAt: DateTime.now().toIso8601String(),
        $updatedAt: DateTime.now().toIso8601String(),
        domain: 'domain',
        resourceType: 'resourceType',
        resourceId: 'resourceId',
        status: 'status',
        logs: 'logs',
        renewAt: DateTime.now().toIso8601String(),
      );
      final rule2 = models.Rule(
        $id: 'test_id2',
        $createdAt: DateTime.now().toIso8601String(),
        $updatedAt: DateTime.now().toIso8601String(),
        domain: 'domain2',
        resourceType: 'resourceType2',
        resourceId: 'resourceId2',
        status: 'status2',
        logs: 'logs2',
        renewAt: DateTime.now().toIso8601String(),
      );
      final rules = [rule, rule2];

      final model = models.RuleList(
        total: 2,
        rules: rules,
      );
      final map = model.toMap();

      final result = models.RuleList.fromMap(map);
      expect(result.total, model.total);
      expect(result.rules.length, model.rules.length);
      for (var i = 0; i < result.rules.length; i++) {
        expect(result.rules[i].toMap(), model.rules[i].toMap());
      }
    });
  });
}
