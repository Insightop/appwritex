import 'package:dart_appwrite/models.dart';

/// Platform
class Platform implements Model {
  /// Platform ID.
  final String $id;

  /// Platform creation date in ISO 8601 format.
  final String $createdAt;

  /// Platform update date in ISO 8601 format.
  final String $updatedAt;

  /// Platform name.
  final String name;

  /// Platform type. Possible values are: web, flutter-web, flutter-ios, flutter-android, ios, android, and unity.
  final String type;

  /// Platform Key. iOS bundle ID or Android package name.  Empty string for other platforms.
  final String key;

  /// App store or Google Play store ID.
  final String store;

  /// Web app hostname. Empty string for other platforms.
  final String hostname;

  /// HTTP basic authentication username.
  final String httpUser;

  /// HTTP basic authentication password.
  final String httpPass;

  Platform({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.name,
    required this.type,
    required this.key,
    required this.store,
    required this.hostname,
    required this.httpUser,
    required this.httpPass,
  });

  factory Platform.fromMap(Map<String, dynamic> map) {
    return Platform(
      $id: map['\$id'],
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      name: map['name'],
      type: map['type'],
      key: map['key'],
      store: map['store'],
      hostname: map['hostname'],
      httpUser: map['httpUser'],
      httpPass: map['httpPass'],
    );
  }
  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "name": name,
      "type": type,
      "key": key,
      "store": store,
      "hostname": hostname,
      "httpUser": httpUser,
      "httpPass": httpPass,
    };
  }
}

// https://github.com/appwrite/appwrite/blob/main/src/Appwrite/Utopia/Response/Model/Platform.php

// <?php

// namespace Appwrite\Utopia\Response\Model;

// use Appwrite\Utopia\Response;
// use Appwrite\Utopia\Response\Model;

// class Platform extends Model
// {
//     /**
//      * @var bool
//      */
//     protected bool $public = false;

//     public function __construct()
//     {
//         $this
//             ->addRule('$id', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Platform ID.',
//                 'default' => '',
//                 'example' => '5e5ea5c16897e',
//             ])
//             ->addRule('$createdAt', [
//                 'type' => self::TYPE_DATETIME,
//                 'description' => 'Platform creation date in ISO 8601 format.',
//                 'default' => '',
//                 'example' => self::TYPE_DATETIME_EXAMPLE,
//             ])
//             ->addRule('$updatedAt', [
//                 'type' => self::TYPE_DATETIME,
//                 'description' => 'Platform update date in ISO 8601 format.',
//                 'default' => '',
//                 'example' => self::TYPE_DATETIME_EXAMPLE,
//             ])
//             ->addRule('name', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Platform name.',
//                 'default' => '',
//                 'example' => 'My Web App',
//             ])
//             ->addRule('type', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Platform type. Possible values are: web, flutter-web, flutter-ios, flutter-android, ios, android, and unity.',
//                 'default' => '',
//                 'example' => 'web',
//             ])
//             ->addRule('key', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Platform Key. iOS bundle ID or Android package name.  Empty string for other platforms.',
//                 'default' => '',
//                 'example' => 'com.company.appname',
//             ])
//             ->addRule('store', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'App store or Google Play store ID.',
//                 'example' => '',
//             ])
//             ->addRule('hostname', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Web app hostname. Empty string for other platforms.',
//                 'default' => '',
//                 'example' => true,
//             ])
//             ->addRule('httpUser', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'HTTP basic authentication username.',
//                 'default' => '',
//                 'example' => 'username',
//             ])
//             ->addRule('httpPass', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'HTTP basic authentication password.',
//                 'default' => '',
//                 'example' => 'password',
//             ])
//         ;
//     }

//     /**
//      * Get Name
//      *
//      * @return string
//      */
//     public function getName(): string
//     {
//         return 'Platform';
//     }

//     /**
//      * Get Type
//      *
//      * @return string
//      */
//     public function getType(): string
//     {
//         return Response::MODEL_PLATFORM;
//     }
// }