import 'package:dart_appwrite/models.dart';

import 'models.dart';

/// Usage Storage
class UsageStorage implements Model {
  /// Time range of the usage stats.
  final String range;

  /// Total aggregated number of buckets
  final int bucketsTotal;

  /// Total aggregated number of files.
  final int filesTotal;

  /// Total aggregated number of files storage (in bytes).
  final int filesStorageTotal;

  /// Aggregated number of buckets per period.
  final List<Metric> buckets;

  /// Aggregated number of files per period.
  final List<Metric> files;

  /// Aggregated number of files storage (in bytes) per period .
  final List<Metric> storage;

  UsageStorage({
    required this.range,
    required this.bucketsTotal,
    required this.filesTotal,
    required this.filesStorageTotal,
    required this.buckets,
    required this.files,
    required this.storage,
  });

  factory UsageStorage.fromMap(Map<String, dynamic> map) {
    return UsageStorage(
      range: map['range'].toString(),
      bucketsTotal: map['bucketsTotal'],
      filesTotal: map['filesTotal'],
      filesStorageTotal: map['filesStorageTotal'],
      buckets: List<Metric>.from(map['buckets']?.map((p) => Metric.fromMap(p))),
      files: List<Metric>.from(map['files']?.map((p) => Metric.fromMap(p))),
      storage: List<Metric>.from(map['storage']?.map((p) => Metric.fromMap(p))),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "range": range,
      "bucketsTotal": bucketsTotal,
      "filesTotal": filesTotal,
      "filesStorageTotal": filesStorageTotal,
      "buckets": buckets.map((p) => p.toMap()).toList(),
      "files": files.map((p) => p.toMap()).toList(),
      "storage": storage.map((p) => p.toMap()).toList(),
    };
  }
}

// https://github.com/appwrite/appwrite/blob/main/src/Appwrite/Utopia/Response/Model/UsageStorage.php
// <?php

// namespace Appwrite\Utopia\Response\Model;

// use Appwrite\Utopia\Response;
// use Appwrite\Utopia\Response\Model;

// class UsageStorage extends Model
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
//             ->addRule('bucketsTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated number of buckets',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('filesTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated number of files.',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('filesStorageTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated number of files storage (in bytes).',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('buckets', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated number of buckets per period.',
//                 'default' => [],
//                 'example' => [],
//                 'array' => true
//             ])
//             ->addRule('files', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated number of files per period.',
//                 'default' => [],
//                 'example' => [],
//                 'array' => true
//             ])
//             ->addRule('storage', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated number of files storage (in bytes) per period .',
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
//         return 'StorageUsage';
//     }

//     /**
//      * Get Type
//      *
//      * @return string
//      */
//     public function getType(): string
//     {
//         return Response::MODEL_USAGE_STORAGE;
//     }
// }