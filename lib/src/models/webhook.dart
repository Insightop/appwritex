part of appwritex.models;

/// Webhook
class Webhook implements Model {
  /// Webhook ID.
  final String $id;

  /// Webhook creation date in ISO 8601 format.
  final String $createdAt;

  /// Webhook update date in ISO 8601 format.
  final String $updatedAt;

  /// Webhook name.
  final String name;

  /// Webhook URL endpoint.
  final String url;

  /// Webhook trigger events.
  final List<String> events;

  /// Indicated if SSL / TLS Certificate verification is enabled.
  final bool security;

  /// HTTP basic authentication username.
  final String httpUser;

  /// HTTP basic authentication password.
  final String httpPass;

  /// Signature key which can be used to validated incoming
  final String signatureKey;

  /// Indicates if this webhook is enabled.
  final bool enabled;

  /// Webhook error logs from the most recent failure.
  final String logs;

  /// Number of consecutive failed webhook attempts.
  final int attempts;

  Webhook({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.name,
    required this.url,
    required this.events,
    required this.security,
    required this.httpUser,
    required this.httpPass,
    required this.signatureKey,
    required this.enabled,
    required this.logs,
    required this.attempts,
  });

  factory Webhook.fromMap(Map<String, dynamic> map) {
    return Webhook(
      $id: map['\$id'],
      $createdAt: map['\$createdAt'],
      $updatedAt: map['\$updatedAt'],
      name: map['name'],
      url: map['url'],
      events: List<String>.from(map['events']),
      security: map['security'],
      httpUser: map['httpUser'],
      httpPass: map['httpPass'],
      signatureKey: map['signatureKey'],
      enabled: map['enabled'],
      logs: map['logs'],
      attempts: map['attempts'],
    );
  }
  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "name": name,
      "url": url,
      "events": events,
      "security": security,
      "httpUser": httpUser,
      "httpPass": httpPass,
      "signatureKey": signatureKey,
      "enabled": enabled,
      "logs": logs,
      "attempts": attempts,
    };
  }
}

// https://github.com/appwrite/appwrite/blob/main/src/Appwrite/Utopia/Response/Model/webhook.php

// <?php

// namespace Appwrite\Utopia\Response\Model;

// use Appwrite\Utopia\Response;
// use Appwrite\Utopia\Response\Model;

// class Webhook extends Model
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
//                 'description' => 'Webhook ID.',
//                 'default' => '',
//                 'example' => '5e5ea5c16897e',
//             ])
//             ->addRule('$createdAt', [
//                 'type' => self::TYPE_DATETIME,
//                 'description' => 'Webhook creation date in ISO 8601 format.',
//                 'default' => '',
//                 'example' => self::TYPE_DATETIME_EXAMPLE,
//             ])
//             ->addRule('$updatedAt', [
//                 'type' => self::TYPE_DATETIME,
//                 'description' => 'Webhook update date in ISO 8601 format.',
//                 'default' => '',
//                 'example' => self::TYPE_DATETIME_EXAMPLE,
//             ])
//             ->addRule('name', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Webhook name.',
//                 'default' => '',
//                 'example' => 'My Webhook',
//             ])
//             ->addRule('url', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Webhook URL endpoint.',
//                 'default' => '',
//                 'example' => 'https://example.com/webhook',
//             ])
//             ->addRule('events', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Webhook trigger events.',
//                 'default' => [],
//                 'example' => 'database.collections.update',
//                 'array' => true,
//             ])
//             ->addRule('security', [
//                 'type' => self::TYPE_BOOLEAN,
//                 'description' => 'Indicated if SSL / TLS Certificate verification is enabled.',
//                 'default' => true,
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
//             ->addRule('signatureKey', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Signature key which can be used to validated incoming',
//                 'default' => '',
//                 'example' => 'ad3d581ca230e2b7059c545e5a',
//             ])
//             ->addRule('enabled', [
//                 'type' => self::TYPE_BOOLEAN,
//                 'description' => 'Indicates if this webhook is enabled.',
//                 'default' => true,
//                 'example' => true,
//             ])
//             ->addRule('logs', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Webhook error logs from the most recent failure.',
//                 'default' => '',
//                 'example' => 'Failed to connect to remote server.',
//             ])
//             ->addRule('attempts', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Number of consecutive failed webhook attempts.',
//                 'default' => 0,
//                 'example' => 10,
//             ]);
//     }

//     /**
//      * Get Name
//      *
//      * @return string
//      */
//     public function getName(): string
//     {
//         return 'Webhook';
//     }

//     /**
//      * Get Type
//      *
//      * @return string
//      */
//     public function getType(): string
//     {
//         return Response::MODEL_WEBHOOK;
//     }
// }