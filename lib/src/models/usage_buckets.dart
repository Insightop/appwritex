import 'package:dart_appwrite/models.dart';

import 'models.dart';

/// Usage Buckets
class UsageBuckets implements Model {
  /// Time range of the usage stats.
  final String range;

  /// Total aggregated number of bucket files.
  final int filesTotal;

  /// Total aggregated number of bucket files storage (in bytes).
  final int filesStorageTotal;

  /// Aggregated  number of bucket files per period.
  final List<Metric> files;

  /// Aggregated  number of bucket storage files (in bytes) per period.
  final List<Metric> storage;

  UsageBuckets({
    required this.range,
    required this.filesTotal,
    required this.filesStorageTotal,
    required this.files,
    required this.storage,
  });

  factory UsageBuckets.fromMap(Map<String, dynamic> map) {
    return UsageBuckets(
      range: map['range'].toString(),
      filesTotal: map['filesTotal'],
      filesStorageTotal: map['filesStorageTotal'],
      files: List<Metric>.from(map['files']?.map((p) => Metric.fromMap(p))),
      storage: List<Metric>.from(map['storage']?.map((p) => Metric.fromMap(p))),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "range": range,
      "filesTotal": filesTotal,
      "filesStorageTotal": filesStorageTotal,
      "files": files.map((p) => p.toMap()).toList(),
      "storage": storage.map((p) => p.toMap()).toList(),
    };
  }
}

// https://github.com/appwrite/appwrite/blob/main/src/Appwrite/Utopia/Response/Model/UsageBuckets.php

// <?php

// namespace Appwrite\Utopia\Response\Model;

// use Appwrite\Utopia\Response;
// use Appwrite\Utopia\Response\Model;

// class UsageBuckets extends Model
// {
//     public function __construct()
//     {
//         $this
//             ->addRule('range', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Time range of the usage stats.',
//                 'default' => '',
//                 'example' => '30d',
//             ])
//             ->addRule('filesTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated number of bucket files.',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('filesStorageTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated number of bucket files storage (in bytes).',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('files', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated  number of bucket files per period.',
//                 'default' => [],
//                 'example' => [],
//                 'array' => true
//             ])
//             ->addRule('storage', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated  number of bucket storage files (in bytes) per period.',
//                 'default' => [],
//                 'example' => [],
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
//         return 'UsageBuckets';
//     }

//     /**
//      * Get Type
//      *
//      * @return string
//      */
//     public function getType(): string
//     {
//         return Response::MODEL_USAGE_BUCKETS;
//     }
// }