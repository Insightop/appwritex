import 'package:dart_appwrite/models.dart';

/// ConsoleVariables
class ConsoleVariables implements Model {
  /// CNAME target for your Appwrite custom domains.
  final String appDomainTarget;

  /// Maximum file size allowed for file upload in bytes.
  final int appStorageLimit;

  /// Maximum file size allowed for deployment in bytes.
  final int appFunctionsSizeLimit;

  /// Defines if usage stats are enabled. This value is set to 'enabled' by default, to disable the usage stats set the value to 'disabled'.
  final String appUsageStats;

  /// Defines if VCS (Version Control System) is enabled.
  final bool appVcsEnabled;

  /// Defines if main domain is configured. If so, custom domains can be created.
  final bool appDomainEnabled;

  /// Defines if AI assistant is enabled.
  final bool appAssistantEnabled;

  ConsoleVariables({
    required this.appDomainTarget,
    required this.appStorageLimit,
    required this.appFunctionsSizeLimit,
    required this.appUsageStats,
    required this.appVcsEnabled,
    required this.appDomainEnabled,
    required this.appAssistantEnabled,
  });
  factory ConsoleVariables.fromMap(Map<String, dynamic> map) {
    return ConsoleVariables(
      appDomainTarget: map['_APP_DOMAIN_TARGET'].toString(),
      appStorageLimit: map['_APP_STORAGE_LIMIT'],
      appFunctionsSizeLimit: map['_APP_FUNCTIONS_SIZE_LIMIT'],
      appUsageStats: map['_APP_USAGE_STATS'].toString(),
      appVcsEnabled: map['_APP_VCS_ENABLED'],
      appDomainEnabled: map['_APP_DOMAIN_ENABLED'],
      appAssistantEnabled: map['_APP_ASSISTANT_ENABLED'],
    );
  }
  @override
  Map<String, dynamic> toMap() {
    return {
      "_APP_DOMAIN_TARGET": appDomainTarget,
      "_APP_STORAGE_LIMIT": appStorageLimit,
      "_APP_FUNCTIONS_SIZE_LIMIT": appFunctionsSizeLimit,
      "_APP_USAGE_STATS": appUsageStats,
      "_APP_VCS_ENABLED": appVcsEnabled,
      "_APP_DOMAIN_ENABLED": appDomainEnabled,
      "_APP_ASSISTANT_ENABLED": appAssistantEnabled,
    };
  }
}

// https://github.com/appwrite/appwrite/blob/main/src/Appwrite/Utopia/Response/Model/ConsoleVariables.php
// <?php

// namespace Appwrite\Utopia\Response\Model;

// use Appwrite\Utopia\Response;
// use Appwrite\Utopia\Response\Model;

// class ConsoleVariables extends Model
// {
//     public function __construct()
//     {
//         $this
//             ->addRule('_APP_DOMAIN_TARGET', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'CNAME target for your Appwrite custom domains.',
//                 'default' => '',
//                 'example' => 'appwrite.io',
//             ])
//             ->addRule('_APP_STORAGE_LIMIT', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Maximum file size allowed for file upload in bytes.',
//                 'default' => '',
//                 'example' => '30000000',
//             ])
//             ->addRule('_APP_FUNCTIONS_SIZE_LIMIT', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Maximum file size allowed for deployment in bytes.',
//                 'default' => '',
//                 'example' => '30000000',
//             ])
//             ->addRule('_APP_USAGE_STATS', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Defines if usage stats are enabled. This value is set to \'enabled\' by default, to disable the usage stats set the value to \'disabled\'.',
//                 'default' => '',
//                 'example' => 'enabled',
//             ])
//             ->addRule('_APP_VCS_ENABLED', [
//                 'type' => self::TYPE_BOOLEAN,
//                 'description' => 'Defines if VCS (Version Control System) is enabled.',
//                 'default' => false,
//                 'example' => true,
//             ])
//             ->addRule('_APP_DOMAIN_ENABLED', [
//                 'type' => self::TYPE_BOOLEAN,
//                 'description' => 'Defines if main domain is configured. If so, custom domains can be created.',
//                 'default' => false,
//                 'example' => true,
//             ])
//             ->addRule('_APP_ASSISTANT_ENABLED', [
//                 'type' => self::TYPE_BOOLEAN,
//                 'description' => 'Defines if AI assistant is enabled.',
//                 'default' => false,
//                 'example' => true,
//             ]);
//     }

//     /**
//      * Get Name
//      *
//      * @return string
//      */
//     public function getName(): string
//     {
//         return 'Console Variables';
//     }

//     /**
//      * Get Type
//      *
//      * @return string
//      */
//     public function getType(): string
//     {
//         return Response::MODEL_CONSOLE_VARIABLES;
//     }
// }