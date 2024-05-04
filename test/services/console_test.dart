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
  group('Console', () {
    late MockClient client;
    late Console console;
    setUp(() {
      client = MockClient();
      console = Console(client);
    });
    test('test method getVariables()', () async {
      final variables = models.ConsoleVariables(
        appDomainTarget: 'appDomainTarget',
        appStorageLimit: 1,
        appFunctionsSizeLimit: 1,
        appUsageStats: 'appUsageStats',
        appVcsEnabled: false,
        appDomainEnabled: false,
        appAssistantEnabled: false,
      );
      when(client.call(
        HttpMethod.get,
        path: '/console/variables',
        headers: {'content-type': 'application/json'},
      )).thenAnswer((_) async => Response(data: variables.toMap()));

      final response = await console.getVariables();
      expect(response, isA<models.ConsoleVariables>());
    });
  });
}
