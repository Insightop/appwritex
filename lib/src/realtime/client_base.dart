import 'package:dart_appwrite/src/response.dart';
import 'package:dart_appwrite/src/client.dart';
import 'package:dart_appwrite/src/enums.dart';

abstract class ClientBase implements Client {
  /// Your project ID
  @override
  ClientBase setProject(value);

  /// Your secret API key
  @override
  ClientBase setKey(value);

  /// Your secret JSON Web Token
  @override
  ClientBase setJWT(value);
  @override
  ClientBase setLocale(value);

  /// The user session to authenticate with
  @override
  ClientBase setSession(value);

  @override
  ClientBase setSelfSigned({bool status = true});

  @override
  ClientBase setEndpoint(String endPoint);

  // @override
  // Client setEndPointRealtime(String endPoint);

  @override
  ClientBase addHeader(String key, String value);

  @override
  Future<Response> call(
    HttpMethod method, {
    String path = '',
    Map<String, String> headers = const {},
    Map<String, dynamic> params = const {},
    ResponseType? responseType,
  });
}
