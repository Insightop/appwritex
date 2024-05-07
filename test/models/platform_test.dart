import 'package:test/test.dart';
import 'package:appwritex/models.dart' as models;

void main() {
  group('model', () {
    test('Platform fromMap() toMap()', () {
      final platform = models.Platform(
        $id: 'test_id',
        $createdAt: DateTime.now().toIso8601String(),
        $updatedAt: DateTime.now().toIso8601String(),
        name: 'test_name',
        type: 'test_type',
        key: 'test_key',
        store: 'test_store',
        hostname: 'test_hostname',
        httpUser: 'test_httpUser',
        httpPass: 'test_http',
      );
      final map = platform.toMap();

      final result = models.Platform.fromMap(map);
      expect(result.$id, platform.$id);
      expect(result.$createdAt, platform.$createdAt);
      expect(result.$updatedAt, platform.$updatedAt);
      expect(result.name, platform.name);
      expect(result.type, platform.type);
      expect(result.key, platform.key);
      expect(result.store, platform.store);
      expect(result.hostname, platform.hostname);
      expect(result.httpUser, platform.httpUser);
      expect(result.httpPass, platform.httpPass);
    });
  });
}
