import 'package:test/test.dart';
import 'package:collection/collection.dart';
import 'package:appwritex/models.dart' as models;

void main() {
  group('model', () {
    test('Project fromMap() toMap()', () {
      final authProvider1 = models.AuthProvider(
          appId: 'test_app_id',
          name: 'test_name',
          key: 'test_key',
          secret: 'test_secret',
          enabled: true);
      final authProvider2 = models.AuthProvider(
          appId: 'test_app_id',
          name: 'test_name',
          key: 'test_key',
          secret: 'test_secret',
          enabled: true);
      final platform1 = models.Platform(
          $id: 'test_id',
          $createdAt: DateTime.now().toIso8601String(),
          $updatedAt: DateTime.now().toIso8601String(),
          name: 'test_name',
          type: 'test_type',
          key: 'test_key',
          store: 'test_store',
          hostname: 'test_hostname',
          httpUser: 'test',
          httpPass: 'test');
      final platform2 = models.Platform(
          $id: 'test_id',
          $createdAt: DateTime.now().toIso8601String(),
          $updatedAt: DateTime.now().toIso8601String(),
          name: 'test_name',
          type: 'test_type',
          key: 'test_key',
          store: 'test_store',
          hostname: 'test_hostname',
          httpUser: 'test',
          httpPass: 'test');
      final webhook1 = models.Webhook(
        $id: 'test_id',
        $createdAt: DateTime.now().toIso8601String(),
        $updatedAt: DateTime.now().toIso8601String(),
        name: 'test_name',
        url: 'test_url',
        events: ['test_events'],
        security: true,
        httpUser: 'test_http_user',
        httpPass: 'test_http_pass',
        signatureKey: 'test_signature_key',
        enabled: true,
        logs: 'test_logs',
        attempts: 65535,
      );
      final webhook2 = models.Webhook(
        $id: 'test_id',
        $createdAt: DateTime.now().toIso8601String(),
        $updatedAt: DateTime.now().toIso8601String(),
        name: 'test_name',
        url: 'test_url',
        events: ['test_events'],
        security: true,
        httpUser: 'test_http_user',
        httpPass: 'test_http_pass',
        signatureKey: 'test_signature_key',
        enabled: true,
        logs: 'test_logs',
        attempts: 65535,
      );
      final key1 = models.Key(
          $id: 'test_id',
          $createdAt: DateTime.now().toIso8601String(),
          $updatedAt: DateTime.now().toIso8601String(),
          name: 'test_name',
          secret: 'test_secret',
          expire: 65535,
          platforms: ['test_platforms'],
          userId: 'test_user_id',
          teamId: 'test_team_id',
          key: 'test_key',
          registration: 65535);

      final model = models.Project(
        $id: 'test_id',
        $createdAt: DateTime.now().toIso8601String(),
        $updatedAt: DateTime.now().toIso8601String(),
        name: 'test_name',
        description: 'test_description',
        teamId: 'test_team_id',
        logo: 'test_logo',
        url: 'test_url',
        legalName: 'test_legal_name',
        legalCountry: 'test_legal_country',
        legalState: 'test_legal_state',
        legalCity: 'test_legal_city',
        legalAddress: 'test_legal_address',
        legalTaxId: 'test_legal_tax_id',
        authDuration: 65535,
        authLimit: 65535,
        authSessionsLimit: 65535,
        authPasswordHistory: 65535,
        authPasswordDictionary: true,
        authPersonalDataCheck: true,
        oAuthProviders: [authProvider1, authProvider2],
        platforms: [platform1, platform2],
        webhooks: [webhook1, webhook2],
        keys: [key1],
        smtpEnabled: true,
        smtpHost: 'test_smtp_host',
        smtpPort: 65535,
        smtpSenderName: 'test_smtp_sender_name',
        smtpSenderEmail: 'test_smtp_sender_email',
        smtpReplyTo: 'test_smtp_reply_to',
        smtpUsername: 'test_smtp_username',
        smtpPassword: 'test_smtp_password',
        smtpSecure: 'test_smtp_secure',
      );
      final map = model.toMap();

      final result = models.Project.fromMap(map);
      expect(result.$id, model.$id);
      expect(result.$createdAt, model.$createdAt);
      expect(result.$updatedAt, model.$updatedAt);
      expect(result.name, model.name);
      expect(result.description, model.description);
      expect(result.teamId, model.teamId);
      expect(result.logo, model.logo);
      expect(result.url, model.url);
      expect(result.legalName, model.legalName);
      expect(result.legalCountry, model.legalCountry);
      expect(result.legalState, model.legalState);
      expect(result.legalCity, model.legalCity);
      expect(result.legalAddress, model.legalAddress);
      expect(result.legalTaxId, model.legalTaxId);
      expect(result.authDuration, model.authDuration);
      expect(result.authLimit, model.authLimit);
      expect(result.authSessionsLimit, model.authSessionsLimit);
      expect(result.authPasswordHistory, model.authPasswordHistory);
      expect(result.authPasswordDictionary, model.authPasswordDictionary);
      expect(result.authPersonalDataCheck, model.authPersonalDataCheck);
      expect(result.oAuthProviders, model.oAuthProviders);
      expect(result.platforms, model.platforms);

      ///
      expect(DeepCollectionEquality().equals(result.webhooks, model.webhooks),
          true);
      expect(ListEquality().equals(result.webhooks, model.webhooks), true);
      expect(result.webhooks, equals(model.webhooks));
      expect(result.webhooks, model.webhooks);

      ///
      expect(result.keys, model.keys);
      expect(result.smtpEnabled, model.smtpEnabled);
      expect(result.smtpHost, model.smtpHost);
      expect(result.smtpPort, model.smtpPort);
      expect(result.smtpSenderName, model.smtpSenderName);
      expect(result.smtpSenderEmail, model.smtpSenderEmail);
      expect(result.smtpReplyTo, model.smtpReplyTo);
      expect(result.smtpUsername, model.smtpUsername);
      expect(result.smtpPassword, model.smtpPassword);
      expect(result.smtpSecure, model.smtpSecure);
    });
  });
}
