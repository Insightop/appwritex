import 'package:test/test.dart';
import 'package:appwritex/models.dart' as models;

void main() {
  group('model', () {
    test('Key fromMap() toMap()', () {
      final model = models.Key(
        $id: 'test_id',
        $createdAt: DateTime.now().toIso8601String(),
        $updatedAt: DateTime.now().toIso8601String(),
        name: 'test_name',
        secret: 'test',
        expire: 65535,
        platforms: ['Android', 'iOS'],
        userId: 'test_user_id',
        teamId: 'test_team_id',
        key: 'test_key',
        registration: 65535,
      );
      final map = model.toMap();

      final result = models.Key.fromMap(map);
      expect(result.$id, model.$id);
      expect(result.$createdAt, model.$createdAt);
      expect(result.$updatedAt, model.$updatedAt);
      expect(result.name, model.name);
      expect(result.secret, model.secret);
      expect(result.expire, model.expire);
      expect(result.platforms, model.platforms);
      expect(result.userId, model.userId);
      expect(result.teamId, model.teamId);
      expect(result.key, model.key);
      expect(result.registration, model.registration);
    });
  });
}
