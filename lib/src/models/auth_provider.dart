part of appwritex.models;

/// Auth Provider
class AuthProvider with EquatableMixin implements Model {
  /// Auth Provider.
  final String key;

  /// Auth Provider name.
  final String name;

  /// OAuth 2.0 application ID.
  final String appId;

  /// OAuth 2.0 application secret. Might be JSON string if provider requires extra configuration.
  final String secret;

  /// Auth Provider is active and can be used to create session.
  final bool enabled;

  AuthProvider({
    required this.key,
    required this.name,
    required this.appId,
    required this.secret,
    required this.enabled,
  });

  factory AuthProvider.fromMap(Map<String, dynamic> map) {
    return AuthProvider(
      key: map['key'],
      name: map['name'],
      appId: map['appId'],
      secret: map['secret'],
      enabled: map['enabled'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "key": key,
      "name": name,
      "appId": appId,
      "secret": secret,
      "enabled": enabled,
    };
  }

  @override
  List<Object> get props => [key, name, appId, secret, enabled];
}

// https://github.com/appwrite/appwrite/blob/main/src/Appwrite/Utopia/Response/Model/authprovider.php
// <?php

// namespace Appwrite\Utopia\Response\Model;

// use Appwrite\Utopia\Response;
// use Appwrite\Utopia\Response\Model;

// class AuthProvider extends Model
// {
//     /**
//      * @var bool
//      */
//     protected bool $public = false;

//     public function __construct()
//     {
//         $this
//             ->addRule('key', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Auth Provider.',
//                 'default' => '',
//                 'example' => 'github',
//             ])
//             ->addRule('name', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Auth Provider name.',
//                 'default' => '',
//                 'example' => 'GitHub',
//             ])
//             ->addRule('appId', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'OAuth 2.0 application ID.',
//                 'default' => '',
//                 'example' => '259125845563242502',
//             ])
//             ->addRule('secret', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'OAuth 2.0 application secret. Might be JSON string if provider requires extra configuration.',
//                 'default' => '',
//                 'example' => 'Bpw_g9c2TGXxfgLshDbSaL8tsCcqgczQ',
//             ])
//             ->addRule('enabled', [
//                 'type' => self::TYPE_BOOLEAN,
//                 'description' => 'Auth Provider is active and can be used to create session.',
//                 'example' => '',
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
//         return 'AuthProvider';
//     }

//     /**
//      * Get Type
//      *
//      * @return string
//      */
//     public function getType(): string
//     {
//         return Response::MODEL_AUTH_PROVIDER;
//     }
// }