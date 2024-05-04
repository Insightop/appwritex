part of appwritex.models;

/// Installation
class Installation implements Model {
  /// Function ID.
  final String $id;

  /// Function creation date in ISO 8601 format.
  final String $createdAt;

  /// Function update date in ISO 8601 format.
  final String $updatedAt;

  /// VCS (Version Control System) provider name.
  final String provider;

  /// VCS (Version Control System) organization name.
  final String organization;

  /// VCS (Version Control System) installation ID.
  final String providerInstallationId;

  Installation({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.provider,
    required this.organization,
    required this.providerInstallationId,
  });

  factory Installation.fromMap(Map<String, dynamic> map) {
    return Installation(
      $id: map['\$id'],
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      provider: map['provider'],
      organization: map['organization'],
      providerInstallationId: map['providerInstallationId'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "provider": provider,
      "organization": organization,
      "providerInstallationId": providerInstallationId,
    };
  }
}

// https://github.com/appwrite/appwrite/blob/main/src/Appwrite/Utopia/Response/Model/installation.php

//<?php

// namespace Appwrite\Utopia\Response\Model;

// use Appwrite\Utopia\Response;
// use Appwrite\Utopia\Response\Model;

// class Installation extends Model
// {
//     public function __construct()
//     {
//         $this
//             ->addRule('$id', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Function ID.',
//                 'default' => '',
//                 'example' => '5e5ea5c16897e',
//             ])
//             ->addRule('$createdAt', [
//                 'type' => self::TYPE_DATETIME,
//                 'description' => 'Function creation date in ISO 8601 format.',
//                 'default' => '',
//                 'example' => self::TYPE_DATETIME_EXAMPLE,
//             ])
//             ->addRule('$updatedAt', [
//                 'type' => self::TYPE_DATETIME,
//                 'description' => 'Function update date in ISO 8601 format.',
//                 'default' => '',
//                 'example' => self::TYPE_DATETIME_EXAMPLE,
//             ])
//             ->addRule('provider', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'VCS (Version Control System) provider name.',
//                 'default' => [],
//                 'example' => 'github',
//                 'array' => false,
//             ])
//             ->addRule('organization', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'VCS (Version Control System) organization name.',
//                 'default' => [],
//                 'example' => 'appwrite',
//                 'array' => false,
//             ])
//             ->addRule('providerInstallationId', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'VCS (Version Control System) installation ID.',
//                 'default' => '',
//                 'example' => '5322',
//             ]);
//     }

//     /**
//      * Get Name
//      *
//      * @return string
//      */
//     public function getName(): string
//     {
//         return 'Installation';
//     }

//     /**
//      * Get Type
//      *
//      * @return string
//      */
//     public function getType(): string
//     {
//         return Response::MODEL_INSTALLATION;
//     }
// }