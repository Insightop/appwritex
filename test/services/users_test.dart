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
  group('Users', () {
    late MockClient client;
    late Users users;
    setUp(() {
      client = MockClient();
      users = Users(client);
    });
    test('test method getUsage()', () async {
      final usersUsage = models.UsageUsers(
        range: '30d',
        usersTotal: 65535,
        sessionsTotal: 65535,
        users: [
          models.Metric(
            date: DateTime.now().toIso8601String(),
            value: 65535,
          ),
        ],
        sessions: [
          models.Metric(
            date: DateTime.now().toIso8601String(),
            value: 65535,
          ),
        ],
      );
      when(client.call(HttpMethod.get, path: '/users/usage'))
          .thenAnswer((_) async => Response(data: usersUsage.toMap()));
      final response = await users.getUsage();
      expect(response, isA<models.UsageUsers>());
    });
  });
}
