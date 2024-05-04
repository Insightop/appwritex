import 'package:appwritex/models.dart' as models;
import 'package:test/test.dart';

void main() {
  group('model', () {
    test('Installation fromMap() toMap()', () {
      final installation = models.Installation(
        $id: 'id',
        $createdAt: DateTime.now().toIso8601String(),
        $updatedAt: DateTime.now().toIso8601String(),
        provider: 'provider',
        organization: 'example',
        providerInstallationId: 'providerInstallationId',
      );

      final map = installation.toMap();

      final result = models.Installation.fromMap(map);
      expect(result.$id, installation.$id);
      expect(result.$createdAt, installation.$createdAt);
      expect(result.$updatedAt, installation.$updatedAt);
      expect(result.provider, installation.provider);
      expect(result.organization, installation.organization);
      expect(
          result.providerInstallationId, installation.providerInstallationId);
    });
  });
}
