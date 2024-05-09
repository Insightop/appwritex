import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:dart_appwrite/models.dart' as models;
import 'package:dart_appwrite/src/enums.dart';
import 'package:dart_appwrite/src/response.dart';
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
  group('Teams', () {
    late MockClient client;
    late Teams teams;
    setUp(() {
      client = MockClient();
      teams = Teams(client);
    });
    // test('test method getUsage()', () async {
    //   final bucketUsage = models.UsageTeams(
    //     range: '30d',
    //     teamsTotal: 65535,
    //     membershipsTotal: 65535,
    //     teams: [
    //       models.Metric(
    //         date: DateTime.now().toIso8601String(),
    //         value: 65535,
    //       ),
    //     ],
    //     memberships: [
    //       models.Metric(
    //         date: DateTime.now().toIso8601String(),
    //         value: 65535,
    //       ),
    //     ],
    //   );
    //   when(client.call(HttpMethod.get, path: '/teams/usage'))
    //       .thenAnswer((_) async => Response(data: bucketUsage.toMap()));
    //   final response = await teams.getUsage();
    //   expect(response, isA<models.UsageTeams>());
    // });
    test('test method listLogs()', () async {
      final logList = models.LogList(total: 65535, logs: []);
      when(client.call(HttpMethod.get, path: '/teams/teamId/logs'))
          .thenAnswer((_) async => Response(data: logList.toMap()));

      final response = await teams.listLogs(teamId: 'teamId');
      expect(response, isA<models.LogList>());
    });
  });
}
