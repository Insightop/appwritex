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
  group('Health', () {
    late MockClient client;
    late Health health;
    setUp(() {
      client = MockClient();
      health = Health(client);
    });
    test('test method getStats()', () async {
      final healthStats = models.HealthStats(
        storage: models.StatsStorage(
          used: '65535',
          partitionTotal: '65535',
          partitionFree: '65535',
        ),
        cache: models.StatsCache(
          uptime: 65535,
          clients: 65535,
          hits: 65535,
          misses: 65535,
          memoryUsed: 65535,
          memoryUsedHuman: '65535',
          memoryUsedPeak: 65535,
          memoryUsedPeakHuman: '65535',
        ),
      );

      when(client.call(HttpMethod.get,
              path: '/health/stats',
              headers: {'content-type': 'application/json'}))
          .thenAnswer((_) async => Response(data: healthStats.toMap()));

      final response = await health.getStats();

      expect(response, isA<models.HealthStats>());
    });
  });
}
