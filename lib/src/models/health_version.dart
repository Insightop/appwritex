import 'package:dart_appwrite/models.dart';

/// Health Version
class HealthVersion implements Model {
  /// Version of the Appwrite instance.
  final String version;

  HealthVersion({
    required this.version,
  });
  factory HealthVersion.fromMap(Map<String, dynamic> map) {
    return HealthVersion(
      version: map['version'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "version": version,
    };
  }
}

// https://github.com/appwrite/appwrite/blob/main/src/Appwrite/Utopia/Response/Model/HealthVersion.php
//<?php

// namespace Appwrite\Utopia\Response\Model;

// use Appwrite\Utopia\Response;
// use Appwrite\Utopia\Response\Model;

// class HealthVersion extends Model
// {
//     public function __construct()
//     {
//         $this
//             ->addRule('version', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Version of the Appwrite instance.',
//                 'default' => '',
//                 'example' => '0.11.0',
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
//         return 'Health Version';
//     }

//     /**
//      * Get Type
//      *
//      * @return string
//      */
//     public function getType(): string
//     {
//         return Response::MODEL_HEALTH_VERSION;
//     }
// }