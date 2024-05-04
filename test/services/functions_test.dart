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
  group('Functions', () {
    late MockClient client;
    late Functions functions;
    setUp(() {
      client = MockClient();
      functions = Functions(client);
    });
    test('test method getFunctionUsage()', () async {
      final functionUsage = models.UsageFunction(
        range: '30d',
        deploymentsTotal: 65535,
        deploymentsStorageTotal: 65535,
        buildsTotal: 65535,
        buildsStorageTotal: 65535,
        buildsTimeTotal: 65535,
        executionsTotal: 65535,
        executionsTimeTotal: 65535,
        deployments: [],
        deploymentsStorage: [],
        builds: [],
        buildsStorage: [],
        buildsTime: [],
        executions: [],
        executionsTime: [],
      );

      when(client.call(HttpMethod.get,
              path: '/functions/functionId/usage',
              params: {'range': '30d'},
              headers: {'content-type': 'application/json'}))
          .thenAnswer((_) async => Response(data: functionUsage.toMap()));

      final response = await functions.getFunctionUsage(
        functionId: 'functionId',
        range: '30d',
      );

      expect(response, isA<models.UsageFunction>());
    });

    test('test method getFunctionsUsage()', () async {
      final functionsUsage = models.UsageFunctions(
        range: '30d',
        functionsTotal: 65535,
        deploymentsTotal: 65535,
        deploymentsStorageTotal: 65535,
        buildsTotal: 65535,
        buildsStorageTotal: 65535,
        buildsTimeTotal: 65535,
        executionsTotal: 65535,
        executionsTimeTotal: 65535,
        functions: [],
        deployments: [],
        deploymentsStorage: [],
        builds: [],
        buildsStorage: [],
        buildsTime: [],
        executions: [],
        executionsTime: [],
      );

      when(client.call(HttpMethod.get,
              path: '/functions/usage',
              params: {'range': '30d'},
              headers: {'content-type': 'application/json'}))
          .thenAnswer((_) async => Response(data: functionsUsage.toMap()));

      final response = await functions.getUsage(
        range: '30d',
      );

      expect(response, isA<models.UsageFunctions>());
    });
  });
}
