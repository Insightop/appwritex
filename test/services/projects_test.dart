import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:dart_appwrite/models.dart' as models;
import 'package:dart_appwrite/src/enums.dart';
import 'package:dart_appwrite/src/response.dart';
import 'dart:typed_data';
import 'package:dart_appwrite/dart_appwrite.dart';

import 'package:appwritex/appwritex.dart';
import 'package:appwritex/models.dart' as models;

class MockClient extends Mock implements Client {
  Map<String, String> config = {'project': 'testproject'};
  String endPoint = 'https://localhost/v1';
  @override
  Future<Response> call(
    HttpMethod? method, {
    String path = '',
    Map<String, String> headers = const {},
    Map<String, dynamic> params = const {},
    ResponseType? responseType,
  }) async {
    return super.noSuchMethod(Invocation.method(#call, [method]),
        returnValue: Response());
  }

  @override
  Future<String?> webAuth(
    Uri? url, {
    String? callbackUrlScheme,
  }) async {
    return super
        .noSuchMethod(Invocation.method(#webAuth, [url]), returnValue: 'done');
  }

  @override
  Future<Response> chunkedUpload({
    String? path,
    Map<String, dynamic>? params,
    String? paramName,
    String? idParamName,
    Map<String, String>? headers,
    Function(UploadProgress)? onProgress,
  }) async {
    return super.noSuchMethod(
        Invocation.method(
            #chunkedUpload, [path, params, paramName, idParamName, headers]),
        returnValue: Response(data: {}));
  }
}

void main() {
  group('Projects', () {
    late MockClient client;
    late Projects projects;
    setUp(() {
      client = MockClient();
      projects = Projects(client);
    });
    test('test method list()', () async {
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

      final project = models.Project(
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
      final projectList = models.ProjectList(
        total: 1,
        projects: [
          project,
        ],
      );

      when(client.call(HttpMethod.get, path: '/projects', headers: {
        'content-type': 'application/json',
      })).thenAnswer((_) async => Response(data: projectList.toMap()));

      final response = await projects.list();
      expect(response, isA<models.ProjectList>());
    });
  });
}
