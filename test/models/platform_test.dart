import 'package:appwritex/models.dart' as models;
import 'package:test/test.dart';

void main() {
  group('model', () {
    test('Platform fromMap() toMap()', () {
      final platform = models.Platform(
        $id: 'test_id',
        $createdAt: DateTime.now().toIso8601String(),
        $updatedAt: DateTime.now().toIso8601String(),
        name: 'test_name',
        type: 'test_type',
        key: 'test_key',
        store: 'test_store',
        hostname: 'test_hostname',
        httpUser: 'test_httpUser',
        httpPass: 'test_http',
      );
      final map = platform.toMap();

      final result = models.Platform.fromMap(map);
      expect(result.$id, platform.$id);
      expect(result.$createdAt, platform.$createdAt);
      expect(result.$updatedAt, platform.$updatedAt);
      expect(result.name, platform.name);
      expect(result.type, platform.type);
      expect(result.key, platform.key);
      expect(result.store, platform.store);
      expect(result.hostname, platform.hostname);
      expect(result.httpUser, platform.httpUser);
      expect(result.httpPass, platform.httpPass);
    });
  });
}
// class Platform implements Model {
//   /// Platform ID.
//   final String $id;

//   /// Platform creation date in ISO 8601 format.
//   final String $createdAt;

//   /// Platform update date in ISO 8601 format.
//   final String $updatedAt;

//   /// Platform name.
//   final String name;

//   /// Platform type. Possible values are: web, flutter-web, flutter-ios, flutter-android, ios, android, and unity.
//   final String type;

//   /// Platform Key. iOS bundle ID or Android package name.  Empty string for other platforms.
//   final String key;

//   /// App store or Google Play store ID.
//   final String store;

//   /// Web app hostname. Empty string for other platforms.
//   final String hostname;

//   /// HTTP basic authentication username.
//   final String httpUser;

//   /// HTTP basic authentication password.
//   final String httpPass;