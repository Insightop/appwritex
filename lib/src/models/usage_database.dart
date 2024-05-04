part of appwritex.models;

/// Usage Database
class UsageDatabase implements Model {
  /// Time range of the usage stats.
  final String range;

  /// Total aggregated number of collections.
  final int collectionsTotal;

  /// Total aggregated number of documents.
  final int documentsTotal;

  /// Aggregated number of collections per period.
  final List<Metric> collections;

  /// Aggregated number of documents per period.
  final List<Metric> documents;

  UsageDatabase({
    required this.range,
    required this.collectionsTotal,
    required this.documentsTotal,
    required this.collections,
    required this.documents,
  });

  factory UsageDatabase.fromMap(Map<String, dynamic> map) {
    return UsageDatabase(
      range: map['range'].toString(),
      collectionsTotal: map['collectionsTotal'],
      documentsTotal: map['documentsTotal'],
      collections:
          List<Metric>.from(map['collections']?.map((p) => Metric.fromMap(p))),
      documents:
          List<Metric>.from(map['documents']?.map((p) => Metric.fromMap(p))),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "range": range,
      "collectionsTotal": collectionsTotal,
      "documentsTotal": documentsTotal,
      "collections": collections.map((p) => p.toMap()).toList(),
      "documents": documents.map((p) => p.toMap()).toList(),
    };
  }
}


// https://github.com/appwrite/appwrite/blob/main/src/Appwrite/Utopia/Response/Model/UsageDatabase.php
// <?php

// namespace Appwrite\Utopia\Response\Model;

// use Appwrite\Utopia\Response;
// use Appwrite\Utopia\Response\Model;

// class UsageDatabase extends Model
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
//             ->addRule('collectionsTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated number of collections.',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('documentsTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated number of documents.',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('collections', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated  number of collections per period.',
//                 'default' => [],
//                 'example' => [],
//                 'array' => true
//             ])
//             ->addRule('documents', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated  number of documents per period.',
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
//         return 'UsageDatabase';
//     }

//     /**
//      * Get Type
//      *
//      * @return string
//      */
//     public function getType(): string
//     {
//         return Response::MODEL_USAGE_DATABASE;
//     }
// }