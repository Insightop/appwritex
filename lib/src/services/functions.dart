import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/src/enums.dart';
import '../models/models.dart';

extension FunctionsExt on Functions {
  /// Get Usage Function
  ///
  /// Get usage information on a specific function.
  Future<UsageFunction> getFunctionUsage({required String functionId}) async {
    final String apiPath =
        '/functions/{functionId}/usage'.replaceAll('{functionId}', functionId);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return UsageFunction.fromMap(res.data);
  }

  /// Get Usage Functions
  ///
  /// Get usage information on all of the current project's functions.
  Future<UsageFunctions> getUsage() async {
    final String apiPath = '/functions/usage';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return UsageFunctions.fromMap(res.data);
  }
}
