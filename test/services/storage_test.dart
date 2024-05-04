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
  group('Storage', () {
    late MockClient client;
    late Storage storage;
    setUp(() {
      client = MockClient();
      storage = Storage(client);
    });
    test('test method getBucketUsage()', () async {
      final bucketUsage = models.UsageBucket(
        range: '30d',
        filesTotal: 65535,
        filesStorageTotal: 65535,
        files: [
          models.Metric(
            date: DateTime.now().toIso8601String(),
            value: 65535,
          ),
        ],
        storage: [
          models.Metric(
            date: DateTime.now().toIso8601String(),
            value: 65535,
          ),
        ],
      );
      when(client.call(HttpMethod.get, path: '/storage/bucketId/usage'))
          .thenAnswer((_) async => Response(data: bucketUsage.toMap()));
      final response = await storage.getBucketUsage(bucketId: 'bucketId');
      expect(response, isA<models.UsageBucket>());
    });
    test('test method getUsage()', () async {
      final usage = models.UsageStorage(
        range: '30d',
        bucketsTotal: 65535,
        filesTotal: 65535,
        filesStorageTotal: 65535,
        buckets: [
          models.Metric(
            date: DateTime.now().toIso8601String(),
            value: 65535,
          ),
        ],
        files: [
          models.Metric(
            date: DateTime.now().toIso8601String(),
            value: 65535,
          ),
        ],
        storage: [
          models.Metric(
            date: DateTime.now().toIso8601String(),
            value: 65535,
          ),
        ],
      );
      when(client.call(HttpMethod.get, path: '/storage/usage'))
          .thenAnswer((_) async => Response(data: usage.toMap()));
      final response = await storage.getUsage();
      expect(response, isA<models.UsageStorage>());
    });
  });
}
