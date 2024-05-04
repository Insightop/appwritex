import 'package:test/test.dart';
import 'package:appwritex/models.dart' as models;

void main() {
  group('model', () {
    test('Webhook fromMap() toMap()', () {
      final usageUsers = models.Webhook(
        $id: '607f1f77bcf86cd799439011',
        $createdAt: DateTime.now().toIso8601String(),
        $updatedAt: DateTime.now().toIso8601String(),
        name: 'My Webhook',
        url: 'https://webhook.site/607f1f77bcf86cd799439011',
        events: ['collections.create', 'collections.update'],
        security: true,
        httpUser: 'my-user',
        httpPass: 'my-pass',
        signatureKey: '607f1f77bcf86cd799439011',
        enabled: true,
        logs: 'https://webhook.site/607f1f77bcf86cd799439011/logs',
        attempts: 0,
      );
      final map = usageUsers.toMap();

      final result = models.Webhook.fromMap(map);
      expect(result.$id, usageUsers.$id);
      expect(result.$createdAt, usageUsers.$createdAt);
      expect(result.$updatedAt, usageUsers.$updatedAt);
      expect(result.name, usageUsers.name);
      expect(result.url, usageUsers.url);
      expect(result.events, usageUsers.events);
      expect(result.security, usageUsers.security);
      expect(result.httpUser, usageUsers.httpUser);
      expect(result.httpPass, usageUsers.httpPass);
      expect(result.signatureKey, usageUsers.signatureKey);
      expect(result.enabled, usageUsers.enabled);
      expect(result.logs, usageUsers.logs);
      expect(result.attempts, usageUsers.attempts);
    });
  });
}
