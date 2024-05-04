import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:dart_appwrite/src/enums.dart';
import 'package:dart_appwrite/src/response.dart';
import 'dart:typed_data';
import 'package:dart_appwrite/dart_appwrite.dart';

import 'package:appwritex/appwritex.dart';

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
  group('Avatars', () {
    late MockClient client;
    late Avatars avatars;
    setUp(() {
      client = MockClient();
      avatars = Avatars(client);
    });
    test('test method getCardsCloud()', () {
      final cardsCloud = Uint8List.fromList([1, 2, 3]);
      when(client.call(HttpMethod.get,
              path: '/cards/cloud',
              params: {'userId': 'testUserId'},
              responseType: ResponseType.bytes))
          .thenAnswer((_) async => Response(data: cardsCloud));
      expect(
          avatars.getCardsCloud(userId: 'testUserId'), completion(cardsCloud));
    });
    test('test method getCardsCloudBack()', () {
      final cardsCloudBack = Uint8List.fromList([1, 2, 3]);
      when(client.call(HttpMethod.get,
              path: '/cards/cloud-back',
              params: {'userId': 'testUserId'},
              responseType: ResponseType.bytes))
          .thenAnswer((_) async => Response(data: cardsCloudBack));
      expect(avatars.getCardsCloudBack(userId: 'testUserId'),
          completion(cardsCloudBack));
    });
    test('test method getCardsCloudOG()', () {
      final cardsCloudOG = Uint8List.fromList([1, 2, 3]);
      when(client.call(HttpMethod.get,
              path: '/cards/cloud-og',
              params: {'userId': 'testUserId'},
              responseType: ResponseType.bytes))
          .thenAnswer((_) async => Response(data: cardsCloudOG));
      expect(avatars.getCardsCloudOG(userId: 'testUserId'),
          completion(cardsCloudOG));
    });
  });
}
