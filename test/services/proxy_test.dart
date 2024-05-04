import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:dart_appwrite/src/enums.dart';
import 'package:dart_appwrite/src/response.dart';
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
  group('Proxy', () {
    late MockClient client;
    late Proxy proxy;
    setUp(() {
      client = MockClient();
      proxy = Proxy(client);
    });
    test('test method listRules()', () async {
      final rule = models.Rule(
        $id: 'test_id',
        $createdAt: DateTime.now().toIso8601String(),
        $updatedAt: DateTime.now().toIso8601String(),
        domain: 'domain',
        resourceType: 'resourceType',
        resourceId: 'resourceId',
        status: 'status',
        logs: 'logs',
        renewAt: DateTime.now().toIso8601String(),
      );
      final rule2 = models.Rule(
        $id: 'test_id2',
        $createdAt: DateTime.now().toIso8601String(),
        $updatedAt: DateTime.now().toIso8601String(),
        domain: 'domain2',
        resourceType: 'resourceType2',
        resourceId: 'resourceId2',
        status: 'status2',
        logs: 'logs2',
        renewAt: DateTime.now().toIso8601String(),
      );
      final rules = [rule, rule2];

      final ruleList = models.RuleList(
        total: 2,
        rules: rules,
      );
      when(client.call(HttpMethod.get, path: '/proxy/rules', params: {}))
          .thenAnswer((_) async => Response(data: ruleList.toMap()));

      final response = await proxy.listRules();
      expect(response, isA<models.RuleList>());
    });
  });
}
