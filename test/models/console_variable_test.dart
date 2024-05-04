import 'package:appwritex/models.dart' as models;
import 'package:test/test.dart';

void main() {
  group('model', () {
    test('ConsoleVariables fromMap(), toMap()', () {
      final model = models.ConsoleVariables(
        appDomainTarget: 'cname',
        appStorageLimit: 65535,
        appFunctionsSizeLimit: 65535,
        appUsageStats: 'enabled',
        appVcsEnabled: true,
        appDomainEnabled: true,
        appAssistantEnabled: true,
      );
      final map = model.toMap();

      final result = models.ConsoleVariables.fromMap(map);
      expect(result.appDomainTarget, model.appDomainTarget);
      expect(result.appStorageLimit, model.appStorageLimit);
      expect(result.appFunctionsSizeLimit, model.appFunctionsSizeLimit);
      expect(result.appUsageStats, model.appUsageStats);
      expect(result.appVcsEnabled, model.appVcsEnabled);
      expect(result.appDomainEnabled, model.appDomainEnabled);
      expect(result.appAssistantEnabled, model.appAssistantEnabled);
    });
  });
}
