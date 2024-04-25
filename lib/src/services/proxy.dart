import 'package:dart_appwrite/src/service.dart';
import 'package:dart_appwrite/src/enums.dart';
import '../models/models.dart' as models;

class Proxy extends Service {
  Proxy(super.client);

  /// List Proxies
  ///
  /// Get a list of all the proxies in the current team. You can use the query
  @Deprecated('Not supported through dart sdk yet.')
  Future<models.RuleList> listRules() async {
    final String apiPath = '/proxy/rules';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.RuleList.fromMap(res.data);
  }
}
