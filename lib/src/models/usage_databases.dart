part of appwritex.models;

/// Usage Databases
class UsageDatabases implements Model {
  /// Time range of the usage stats.
  final String range;

  /// Total aggregated number of databases.
  final int databasesTotal;

  /// Total aggregated number  of collections.
  final int collectionsTotal;

  /// Total aggregated number of documents.
  final int documentsTotal;

  /// Aggregated number of databases per period.
  final List<Metric> databases;

  /// Aggregated number of collections per period.
  final List<Metric> collections;

  /// Aggregated number of documents per period.
  final List<Metric> documents;

  UsageDatabases({
    required this.range,
    required this.databasesTotal,
    required this.collectionsTotal,
    required this.documentsTotal,
    required this.databases,
    required this.collections,
    required this.documents,
  });

  factory UsageDatabases.fromMap(Map<String, dynamic> map) {
    return UsageDatabases(
      range: map['range'].toString(),
      databasesTotal: map['databasesTotal'],
      collectionsTotal: map['collectionsTotal'],
      documentsTotal: map['documentsTotal'],
      databases:
          List<Metric>.from(map['databases']?.map((p) => Metric.fromMap(p))),
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
      "databasesTotal": databasesTotal,
      "collectionsTotal": collectionsTotal,
      "documentsTotal": documentsTotal,
      "databases": databases.map((p) => p.toMap()).toList(),
      "collections": collections.map((p) => p.toMap()).toList(),
      "documents": documents.map((p) => p.toMap()).toList(),
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UsageDatabases &&
        other.range == range &&
        other.databasesTotal == databasesTotal &&
        other.collectionsTotal == collectionsTotal &&
        other.documentsTotal == documentsTotal &&
        ListEquality().equals(other.databases, databases) &&
        ListEquality().equals(other.collections, collections) &&
        ListEquality().equals(other.documents, documents);
  }

  @override
  int get hashCode {
    return range.hashCode ^
        databasesTotal.hashCode ^
        collectionsTotal.hashCode ^
        documentsTotal.hashCode ^
        databases.hashCode ^
        collections.hashCode ^
        documents.hashCode;
  }
}


// https://github.com/appwrite/appwrite/blob/main/src/Appwrite/Utopia/Response/Model/UsageDatabases.php

// <?php

// namespace Appwrite\Utopia\Response\Model;

// use Appwrite\Utopia\Response;
// use Appwrite\Utopia\Response\Model;

// class UsageDatabases extends Model
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
//             ->addRule('databasesTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated number of databases.',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('collectionsTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated number  of collections.',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('documentsTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated number of documents.',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('databases', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated number of databases per period.',
//                 'default' => [],
//                 'example' => [],
//                 'array' => true
//             ])
//             ->addRule('collections', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated number of collections per period.',
//                 'default' => [],
//                 'example' => [],
//                 'array' => true
//             ])
//             ->addRule('documents', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated number of documents per period.',
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
//         return 'UsageDatabases';
//     }

//     /**
//      * Get Type
//      *
//      * @return string
//      */
//     public function getType(): string
//     {
//         return Response::MODEL_USAGE_DATABASES;
//     }
// }