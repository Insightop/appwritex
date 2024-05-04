import 'package:appwritex/models.dart' as models;
import 'package:test/test.dart';

void main() {
  group('model', () {
    test('Rule fromMap() toMap()', () {
      final model = models.Rule(
        $id: 'id',
        $createdAt: DateTime.now().toIso8601String(),
        $updatedAt: DateTime.now().toIso8601String(),
        domain: 'example.com',
        resourceType: 'resourceType',
        resourceId: 'resourceId',
        status: 'status',
        logs: 'logs',
        renewAt: DateTime.now().toIso8601String(),
      );
      final map = model.toMap();

      final result = models.Rule.fromMap(map);
      expect(result.$id, model.$id);
      expect(result.$createdAt, model.$createdAt);
      expect(result.$updatedAt, model.$updatedAt);
      expect(result.domain, model.domain);
      expect(result.resourceType, model.resourceType);
      expect(result.resourceId, model.resourceId);
      expect(result.status, model.status);
      expect(result.logs, model.logs);
      expect(result.renewAt, model.renewAt);
    });
  });
}
