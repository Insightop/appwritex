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
  group('Project', () {
    late MockClient client;
    late Project project;
    setUp(() {
      client = MockClient();
      project = Project(client);
    });
    test('test method getUsage()', () async {
      final usageProject = models.UsageProject(
        executionsTotal: 65535,
        documentsTotal: 65535,
        databasesTotal: 65535,
        usersTotal: 65535,
        filesStorageTotal: 65535,
        bucketsTotal: 65535,
        requests: [
          models.Metric(
            value: 65535,
            date: DateTime.now().toIso8601String(),
          )
        ],
        network: [
          models.Metric(
            value: 65535,
            date: DateTime.now().toIso8601String(),
          )
        ],
        users: [
          models.Metric(
            value: 65535,
            date: DateTime.now().toIso8601String(),
          )
        ],
        executions: [
          models.Metric(
            value: 65535,
            date: DateTime.now().toIso8601String(),
          )
        ],
        executionsBreakdown: [
          models.MetricBreakdown(
            value: '65535',
            resourceId: '65535',
            name: '65535',
          )
        ],
        bucketsBreakdown: [
          models.MetricBreakdown(
            value: '65535',
            resourceId: '65535',
            name: '65535',
          )
        ],
      );

      when(client.call(HttpMethod.get, path: '/usage/project', headers: {
        'content-type': 'application/json',
      })).thenAnswer((_) async => Response(data: usageProject.toMap()));

      final response = await project.getUsage();
      expect(response, isA<models.UsageProject>());
    });

    test('test method getVariables()', () async {
      final variableList = models.VariableList(
        total: 65535,
        variables: [
          models.Variable(
            $id: '65535',
            $createdAt: DateTime.now().toIso8601String(),
            $updatedAt: DateTime.now().toIso8601String(),
            key: '65535',
            value: '65535',
            resourceType: '65535',
            resourceId: '65535',
          )
        ],
      );

      when(client.call(HttpMethod.get, path: '/project/variables', headers: {
        'content-type': 'application/json',
      })).thenAnswer((_) async => Response(data: variableList.toMap()));

      final response = await project.getVariables();
      expect(response, isA<models.VariableList>());
    });
  });
}
