import 'package:test/test.dart';
import 'package:appwritex/models.dart' as models;

void main() {
  group('model', () {
    test('ProjectList fromMap() toMap()', () {
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

      final project1 = models.Project(
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
      final project2 = models.Project(
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
      final projects = [project1, project2];

      final model = models.ProjectList(
        total: 2,
        projects: projects,
      );
      final map = model.toMap();

      final result = models.ProjectList.fromMap(map);
      expect(result.total, model.total);
      // expect(result.projects, model.projects);
      for (var i = 0; i < projects.length; i++) {
        expect(result.projects[i].$id, projects[i].$id);
        expect(result.projects[i].$createdAt, projects[i].$createdAt);
        expect(result.projects[i].$updatedAt, projects[i].$updatedAt);
        expect(result.projects[i].name, projects[i].name);
        expect(result.projects[i].description, projects[i].description);
        expect(result.projects[i].teamId, projects[i].teamId);
        expect(result.projects[i].logo, projects[i].logo);
        expect(result.projects[i].url, projects[i].url);
        expect(result.projects[i].legalName, projects[i].legalName);
        expect(result.projects[i].legalCountry, projects[i].legalCountry);
        expect(result.projects[i].legalState, projects[i].legalState);
        expect(result.projects[i].legalCity, projects[i].legalCity);
        expect(result.projects[i].legalAddress, projects[i].legalAddress);
        expect(result.projects[i].legalTaxId, projects[i].legalTaxId);
        expect(result.projects[i].authDuration, projects[i].authDuration);
        expect(result.projects[i].authLimit, projects[i].authLimit);
        expect(result.projects[i].authSessionsLimit,
            projects[i].authSessionsLimit);
        expect(result.projects[i].authPasswordHistory,
            projects[i].authPasswordHistory);
        expect(result.projects[i].authPasswordDictionary,
            projects[i].authPasswordDictionary);
        expect(result.projects[i].authPersonalDataCheck,
            projects[i].authPersonalDataCheck);
        expect(result.projects[i].oAuthProviders, projects[i].oAuthProviders);
        expect(result.projects[i].platforms, projects[i].platforms);
        expect(result.projects[i].webhooks, projects[i].webhooks);
        expect(result.projects[i].keys, projects[i].keys);
        expect(result.projects[i].smtpEnabled, projects[i].smtpEnabled);
        expect(result.projects[i].smtpHost, projects[i].smtpHost);
        expect(result.projects[i].smtpPort, projects[i].smtpPort);
        expect(result.projects[i].smtpSenderName, projects[i].smtpSenderName);
        expect(result.projects[i].smtpSenderEmail, projects[i].smtpSenderEmail);
        expect(result.projects[i].smtpReplyTo, projects[i].smtpReplyTo);
        expect(result.projects[i].smtpUsername, projects[i].smtpUsername);
        expect(result.projects[i].smtpPassword, projects[i].smtpPassword);
        expect(result.projects[i].smtpSecure, projects[i].smtpSecure);
      }
    });
  });
}
