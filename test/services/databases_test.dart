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
  group('Databases', () {
    late MockClient client;
    late Databases databases;
    setUp(() {
      client = MockClient();
      databases = Databases(client);
    });
    test('test method getCollectionUsage()', () async {
      final collectionUsage = models.UsageCollection(
        range: '30d',
        documentsTotal: 65535,
        documents: [
          models.Metric(
            date: DateTime.now().toIso8601String(),
            value: 1000,
          ),
          models.Metric(
            date: DateTime.now().toIso8601String(),
            value: 2000,
          ),
        ],
      );
      when(client.call(HttpMethod.get,
              path: '/databases/databaseId/collections/collectionId/usage',
              params: {'range': '30d'}))
          .thenAnswer((_) async => Response(data: collectionUsage.toMap()));

      final result = await databases.getCollectionUsage(
        databaseId: 'databaseId',
        collectionId: 'collectionId',
        range: '30d',
      );
      expect(result, isA<models.UsageCollection>());
    });

    test('test method getDatabaseUsage()', () async {
      final databaseUsage = models.UsageDatabase(
        range: '30d',
        collectionsTotal: 65535,
        documentsTotal: 65535,
        collections: [
          models.Metric(
            date: DateTime.now().toIso8601String(),
            value: 1000,
          ),
          models.Metric(
            date: DateTime.now().toIso8601String(),
            value: 2000,
          ),
        ],
        documents: [
          models.Metric(
            date: DateTime.now().toIso8601String(),
            value: 1000,
          ),
          models.Metric(
            date: DateTime.now().toIso8601String(),
            value: 2000,
          ),
        ],
      );
      when(client.call(HttpMethod.get,
              path: '/databases/databaseId/usage', params: {'range': '30d'}))
          .thenAnswer((_) async => Response(data: databaseUsage.toMap()));

      final result = await databases.getDatabaseUsage(
        databaseId: 'databaseId',
        range: '30d',
      );
      expect(result, isA<models.UsageDatabase>());
    });
    test('test method getUsage()', () async {
      final usage = models.UsageDatabases(
        range: '30d',
        databasesTotal: 65535,
        collectionsTotal: 65535,
        documentsTotal: 65535,
        databases: [
          models.Metric(
            date: DateTime.now().toIso8601String(),
            value: 1000,
          ),
          models.Metric(
            date: DateTime.now().toIso8601String(),
            value: 2000,
          ),
        ],
        collections: [
          models.Metric(
            date: DateTime.now().toIso8601String(),
            value: 1000,
          ),
          models.Metric(
            date: DateTime.now().toIso8601String(),
            value: 2000,
          ),
        ],
        documents: [
          models.Metric(
            date: DateTime.now().toIso8601String(),
            value: 1000,
          ),
          models.Metric(
            date: DateTime.now().toIso8601String(),
            value: 2000,
          ),
        ],
      );
      when(client.call(HttpMethod.get,
              path: '/databases/usage', params: {'range': '30d'}))
          .thenAnswer((_) async => Response(data: usage.toMap()));

      final result = await databases.getUsage(range: '30d');
      expect(result, isA<models.UsageDatabases>());
    });
  });
}
