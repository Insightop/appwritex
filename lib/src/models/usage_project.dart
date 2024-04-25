import 'package:dart_appwrite/models.dart';
import 'models.dart';

/// Usage Project
class UsageProject implements Model {
  /// Total aggregated number of function executions.
  final int executionsTotal;

  /// Total aggregated  number of documents.
  final int documentsTotal;

  /// Total aggregated number of databases.
  final int databasesTotal;

  /// Total aggregated number of users.
  final int usersTotal;

  /// Total aggregated sum of files storage size (in bytes).
  final int filesStorageTotal;

  /// Total aggregated number of buckets.
  final int bucketsTotal;

  /// Aggregated  number of requests per period.
  final List<Metric> requests;

  /// Aggregated number of consumed bandwidth per period.
  final List<Metric> network;

  /// Aggregated number of users per period.
  final List<Metric> users;

  /// Aggregated number of executions per period.
  final List<Metric> executions;

  /// Aggregated breakdown in totals of executions by functions.
  final List<MetricBreakdown> executionsBreakdown;

  /// Aggregated breakdown in totals of usage by buckets.
  final List<MetricBreakdown> bucketsBreakdown;

  UsageProject({
    required this.executionsTotal,
    required this.documentsTotal,
    required this.databasesTotal,
    required this.usersTotal,
    required this.filesStorageTotal,
    required this.bucketsTotal,
    required this.requests,
    required this.network,
    required this.users,
    required this.executions,
    required this.executionsBreakdown,
    required this.bucketsBreakdown,
  });

  factory UsageProject.fromMap(Map<String, dynamic> map) {
    return UsageProject(
      executionsTotal: map['executionsTotal'],
      documentsTotal: map['documentsTotal'],
      databasesTotal: map['databasesTotal'],
      usersTotal: map['usersTotal'],
      filesStorageTotal: map['filesStorageTotal'],
      bucketsTotal: map['bucketsTotal'],
      requests:
          List<Metric>.from(map['requests']?.map((p) => Metric.fromMap(p))),
      network: List<Metric>.from(map['network']?.map((p) => Metric.fromMap(p))),
      users: List<Metric>.from(map['users']?.map((p) => Metric.fromMap(p))),
      executions:
          List<Metric>.from(map['executions']?.map((p) => Metric.fromMap(p))),
      executionsBreakdown: List<MetricBreakdown>.from(
          map['executionsBreakdown']?.map((p) => MetricBreakdown.fromMap(p))),
      bucketsBreakdown: List<MetricBreakdown>.from(
          map['bucketsBreakdown']?.map((p) => MetricBreakdown.fromMap(p))),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      'executionsTotal': executionsTotal,
      'documentsTotal': documentsTotal,
      'databasesTotal': databasesTotal,
      'usersTotal': usersTotal,
      'filesStorageTotal': filesStorageTotal,
      'bucketsTotal': bucketsTotal,
      'requests': requests.map((p) => p.toMap()).toList(),
      'network': network.map((p) => p.toMap()).toList(),
      'users': users.map((p) => p.toMap()).toList(),
      'executions': executions.map((p) => p.toMap()).toList(),
      'executionsBreakdown': executionsBreakdown.map((p) => p.toMap()).toList(),
      'bucketsBreakdown': bucketsBreakdown.map((p) => p.toMap()).toList(),
    };
  }
}

// https://github.com/appwrite/appwrite/blob/main/src/Appwrite/Utopia/Response/Model/UsageProject.php

// <?php

// namespace Appwrite\Utopia\Response\Model;

// use Appwrite\Utopia\Response;
// use Appwrite\Utopia\Response\Model;

// class UsageProject extends Model
// {
//     public function __construct()
//     {
//         $this
//             ->addRule('executionsTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated number of function executions.',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('documentsTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated  number of documents.',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('databasesTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated number of databases.',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('usersTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated number of users.',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('filesStorageTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated sum of files storage size (in bytes).',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('bucketsTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated number of buckets.',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('requests', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated  number of requests per period.',
//                 'default' => [],
//                 'example' => [],
//                 'array' => true
//             ])
//             ->addRule('network', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated number of consumed bandwidth per period.',
//                 'default' => [],
//                 'example' => [],
//                 'array' => true
//             ])
//             ->addRule('users', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated number of users per period.',
//                 'default' => [],
//                 'example' => [],
//                 'array' => true
//             ])
//             ->addRule('executions', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated number of executions per period.',
//                 'default' => [],
//                 'example' => [],
//                 'array' => true
//             ])
//             ->addRule('executionsBreakdown', [
//                 'type' => Response::MODEL_METRIC_BREAKDOWN,
//                 'description' => 'Aggregated breakdown in totals of executions by functions.',
//                 'default' => [],
//                 'example' => [],
//                 'array' => true
//             ])
//             ->addRule('bucketsBreakdown', [
//                 'type' => Response::MODEL_METRIC_BREAKDOWN,
//                 'description' => 'Aggregated breakdown in totals of usage by buckets.',
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
//         return 'UsageProject';
//     }

//     /**
//      * Get Type
//      *
//      * @return string
//      */
//     public function getType(): string
//     {
//         return Response::MODEL_USAGE_PROJECT;
//     }
// }