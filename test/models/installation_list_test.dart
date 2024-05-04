import 'package:appwritex/models.dart' as models;
import 'package:test/test.dart';

void main() {
  group('model', () {
    test('InstallationList fromMap() toMap()', () {
      final model = models.InstallationList(
        total: 65535,
        installations: [
          models.Installation(
            $id: 'id',
            $createdAt: DateTime.now().toIso8601String(),
            $updatedAt: DateTime.now().toIso8601String(),
            provider: 'provider',
            organization: 'organization',
            providerInstallationId: 'providerInstallationId',
          ),
        ],
      );
      final map = model.toMap();

      final result = models.InstallationList.fromMap(map);
      expect(result.total, model.total);
      expect(result.installations[0].$id, model.installations[0].$id);
      expect(result.installations[0].$createdAt,
          model.installations[0].$createdAt);
      expect(result.installations[0].$updatedAt,
          model.installations[0].$updatedAt);
      expect(result.installations[0].provider, model.installations[0].provider);
      expect(result.installations[0].organization,
          model.installations[0].organization);
      expect(result.installations[0].providerInstallationId,
          model.installations[0].providerInstallationId);
    });
  });
}
