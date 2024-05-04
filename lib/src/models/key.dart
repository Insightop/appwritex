part of appwritex.models;

/// Key
class Key implements Model {
  /// Key ID.
  final String $id;

  /// Key creation date in ISO 8601 format.
  final String $createdAt;

  /// Key update date in ISO 8601 format.
  final String $updatedAt;

  /// Key name.
  final String name;

  /// Key secret.
  final String secret;

  /// Key expiration date in Unix timestamp.
  final int expire;

  /// Key platforms.
  final List<String> platforms;

  /// Key user identifier.
  final String userId;

  /// Key team identifier.
  final String teamId;

  /// Key key.
  final String key;

  /// Key registration date in Unix timestamp.
  final int registration;

  Key({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.name,
    required this.secret,
    required this.expire,
    required this.platforms,
    required this.userId,
    required this.teamId,
    required this.key,
    required this.registration,
  });

  factory Key.fromMap(Map<String, dynamic> map) {
    return Key(
      $id: map['\$id'],
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      name: map['name'],
      secret: map['secret'],
      expire: map['expire'],
      platforms: List<String>.from(map['platforms']),
      userId: map['userId'],
      teamId: map['teamId'],
      key: map['key'],
      registration: map['registration'],
    );
  }
  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "name": name,
      "secret": secret,
      "expire": expire,
      "platforms": platforms,
      "userId": userId,
      "teamId": teamId,
      "key": key,
      "registration": registration,
    };
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Key &&
          runtimeType == other.runtimeType &&
          $id == other.$id &&
          $createdAt == other.$createdAt &&
          $updatedAt == other.$updatedAt &&
          name == other.name &&
          secret == other.secret &&
          expire == other.expire &&
          platforms == other.platforms &&
          userId == other.userId &&
          teamId == other.teamId &&
          key == other.key &&
          registration == other.registration;

  @override
  int get hashCode =>
      $id.hashCode ^
      $createdAt.hashCode ^
      $updatedAt.hashCode ^
      name.hashCode ^
      secret.hashCode ^
      expire.hashCode ^
      platforms.hashCode ^
      userId.hashCode ^
      teamId.hashCode ^
      key.hashCode ^
      registration.hashCode;
}

// https://github.com/appwrite/appwrite/blob/main/src/Appwrite/Utopia/Response/Model/key.php


// <?php

// namespace Appwrite\Utopia\Response\Model;

// use Appwrite\Utopia\Response;
// use Appwrite\Utopia\Response\Model;

// class Key extends Model
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
//                 'description' => 'Key ID.',
//                 'default' => '',
//                 'example' => '5e5ea5c16897e',
//             ])
//             ->addRule('$createdAt', [
//                 'type' => self::TYPE_DATETIME,
//                 'description' => 'Key creation date in ISO 8601 format.',
//                 'default' => '',
//                 'example' => self::TYPE_DATETIME_EXAMPLE,
//             ])
//             ->addRule('$updatedAt', [
//                 'type' => self::TYPE_DATETIME,
//                 'description' => 'Key update date in ISO 8601 format.',
//                 'default' => '',
//                 'example' => self::TYPE_DATETIME_EXAMPLE,
//             ])
//             ->addRule('name', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Key name.',
//                 'default' => '',
//                 'example' => 'My API Key',
//             ])
//             ->addRule('expire', [
//                 'type' => self::TYPE_DATETIME,
//                 'description' => 'Key expiration date in ISO 8601 format.',
//                 'default' => '',
//                 'example' => self::TYPE_DATETIME_EXAMPLE,
//             ])
//             ->addRule('scopes', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Allowed permission scopes.',
//                 'default' => [],
//                 'example' => 'users.read',
//                 'array' => true,
//             ])
//             ->addRule('secret', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Secret key.',
//                 'default' => '',
//                 'example' => '919c2d18fb5d4...a2ae413da83346ad2',
//             ])
//             ->addRule('accessedAt', [
//                 'type' => self::TYPE_DATETIME,
//                 'description' => 'Most recent access date in ISO 8601 format. This attribute is only updated again after ' . APP_KEY_ACCCESS / 60 / 60 . ' hours.',
//                 'default' => '',
//                 'example' => self::TYPE_DATETIME_EXAMPLE
//             ])
//             ->addRule('sdks', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'List of SDK user agents that used this key.',
//                 'default' => null,
//                 'example' => 'appwrite:flutter',
//                 'array' => true
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
//         return 'Key';
//     }

//     /**
//      * Get Type
//      *
//      * @return string
//      */
//     public function getType(): string
//     {
//         return Response::MODEL_KEY;
//     }
// }