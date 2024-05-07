part of appwritex.models;

/// Rule
class Rule with EquatableMixin implements Model {
  /// Rule ID.
  final String $id;

  /// Rule creation date in ISO 8601 format.
  final String $createdAt;

  /// Rule update date in ISO 8601 format.
  final String $updatedAt;

  /// Domain name.
  final String domain;

  /// Action definition for the rule. Possible values are "api", "function", or "redirect"
  final String resourceType;

  /// ID of resource for the action type. If resourceType is "api" or "url", it is empty. If resourceType is "function", it is ID of the function.
  final String resourceId;

  /// Domain verification status. Possible values are "created", "verifying", "verified" and "unverified"
  final String status;

  /// Certificate generation logs. This will return an empty string if generation did not run, or succeeded.
  final String logs;

  /// Certificate auto-renewal date in ISO 8601 format.
  final String renewAt;

  Rule({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.domain,
    required this.resourceType,
    required this.resourceId,
    required this.status,
    required this.logs,
    required this.renewAt,
  });

  factory Rule.fromMap(Map<String, dynamic> map) {
    return Rule(
      $id: map['\$id'],
      $createdAt: map['\$createdAt'],
      $updatedAt: map['\$updatedAt'],
      domain: map['domain'],
      resourceType: map['resourceType'],
      resourceId: map['resourceId'],
      status: map['status'],
      logs: map['logs'],
      renewAt: map['renewAt'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "domain": domain,
      "resourceType": resourceType,
      "resourceId": resourceId,
      "status": status,
      "logs": logs,
      "renewAt": renewAt,
    };
  }

  @override
  List<Object> get props => [
        $id,
        $createdAt,
        $updatedAt,
        domain,
        resourceType,
        resourceId,
        status,
        logs,
        renewAt,
      ];
}

// https://github.com/appwrite/appwrite/blob/main/src/Appwrite/Utopia/Response/Model/rule.php
// <?php

// namespace Appwrite\Utopia\Response\Model;

// use Appwrite\Utopia\Response;
// use Appwrite\Utopia\Response\Model;

// class Rule extends Model
// {
//     public function __construct()
//     {
//         $this
//             ->addRule('$id', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Rule ID.',
//                 'default' => '',
//                 'example' => '5e5ea5c16897e',
//             ])
//             ->addRule('$createdAt', [
//                 'type' => self::TYPE_DATETIME,
//                 'description' => 'Rule creation date in ISO 8601 format.',
//                 'default' => '',
//                 'example' => self::TYPE_DATETIME_EXAMPLE,
//             ])
//             ->addRule('$updatedAt', [
//                 'type' => self::TYPE_DATETIME,
//                 'description' => 'Rule update date in ISO 8601 format.',
//                 'default' => '',
//                 'example' => self::TYPE_DATETIME_EXAMPLE,
//             ])
//             ->addRule('domain', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Domain name.',
//                 'default' => '',
//                 'example' => 'appwrite.company.com',
//             ])
//             ->addRule('resourceType', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Action definition for the rule. Possible values are "api", "function", or "redirect"',
//                 'default' => '',
//                 'example' => 'function',
//             ])
//             ->addRule('resourceId', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'ID of resource for the action type. If resourceType is "api" or "url", it is empty. If resourceType is "function", it is ID of the function.',
//                 'default' => '',
//                 'example' => 'myAwesomeFunction',
//             ])
//             ->addRule('status', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Domain verification status. Possible values are "created", "verifying", "verified" and "unverified"',
//                 'default' => false,
//                 'example' => 'verified',
//             ])
//             ->addRule('logs', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Certificate generation logs. This will return an empty string if generation did not run, or succeeded.',
//                 'default' => '',
//                 'example' => 'HTTP challegne failed.',
//             ])
//             ->addRule('renewAt', [
//                 'type' => self::TYPE_DATETIME,
//                 'description' => 'Certificate auto-renewal date in ISO 8601 format.',
//                 'default' => APP_DATABASE_ATTRIBUTE_DATETIME,
//                 'example' => APP_DATABASE_ATTRIBUTE_DATETIME,
//                 'array' => false,
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
//         return 'Rule';
//     }

//     /**
//      * Get Type
//      *
//      * @return string
//      */
//     public function getType(): string
//     {
//         return Response::MODEL_PROXY_RULE;
//     }
// }