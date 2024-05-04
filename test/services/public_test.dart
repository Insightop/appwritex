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
  group('Public', () {
    late MockClient client;
    late Public public;
    setUp(() {
      client = MockClient();
      public = Public(client);
    });
    test('test method getVersions()', () async {
      final versions = models.Versions(
        server: '1.0.0',
        clientWeb: '1.0.1',
        clientFlutter: '1.0.2',
        clientApple: '1.0.3',
        clientAndroid: '1.0.4',
        clientGraphql: '1.0.5',
        clientRest: '1.0.6',
        consoleWeb: '1.0.7',
        consoleCli: '1.0.8',
        serverNodejs: '1.0.9',
        serverDeno: '1.0.10',
        serverPhp: '1.0.11',
        serverPython: '1.0.12',
        serverRuby: '1.0.13',
        serverDotnet: '1.0.14',
        serverDart: '1.0.15',
        serverKotlin: '1.0.16',
        serverSwift: '1.0.17',
        serverGraphql: '1.0.18',
        serverRest: '1.0.19',
      );
      when(client.call(HttpMethod.get, path: '/../versions', headers: {
        'content-type': 'application/json',
      })).thenAnswer((_) async => Response(data: versions.toMap()));

      final response = await public.getVersions();
      expect(response, isA<models.Versions>());
    });
    test('test method getHealthVersion()', () async {
      final healthVersion = models.HealthVersion(
        version: '1.0.0',
      );
      when(client.call(HttpMethod.get, path: '/health/version', headers: {
        'content-type': 'application/json',
      })).thenAnswer((_) async => Response(data: healthVersion.toMap()));

      final response = await public.getHealthVersion();
      expect(response, isA<models.HealthVersion>());
    });
  });
}
