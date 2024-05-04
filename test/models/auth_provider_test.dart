import 'package:appwritex/models.dart' as x;
import 'package:test/test.dart';

void main() {
  group('model', () {
    test('AuthProvider fromMap(),toMap()', () {
      final model = x.AuthProvider(
        key: 'appwrite_auth_provider_key',
        name: 'appwrite_auth_provider_name',
        appId: 'appwrite_auth_provider_app_id',
        secret: 'appwrite_auth_provider_secret',
        enabled: true,
      );
      final map = model.toMap();

      final result = x.AuthProvider.fromMap(map);
      expect(result.key, model.key);
      expect(result.name, model.name);
      expect(result.appId, model.appId);
      expect(result.secret, model.secret);
      expect(result.enabled, model.enabled);
    });
  });
}
