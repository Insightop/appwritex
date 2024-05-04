part of appwritex.models;

/// Usage Functions
class UsageFunctions implements Model {
  /// Time range of the usage stats.
  final String range;

  /// Total aggregated number of functions.
  final int functionsTotal;

  /// Total aggregated number of functions deployments.
  final int deploymentsTotal;

  /// Total aggregated sum of functions deployment storage.
  final int deploymentsStorageTotal;

  /// Total aggregated number of functions build.
  final int buildsTotal;

  /// total aggregated sum of functions build storage.
  final int buildsStorageTotal;

  /// Total aggregated sum of functions build compute time.
  final int buildsTimeTotal;

  /// Total  aggregated number of functions execution.
  final int executionsTotal;

  /// Total aggregated sum of functions  execution compute time.
  final int executionsTimeTotal;

  /// Aggregated number of functions per period.
  final List<Metric> functions;

  /// Aggregated number of functions deployment per period.
  final List<Metric> deployments;

  /// Aggregated number of  functions deployment storage per period.
  final List<Metric> deploymentsStorage;

  /// Aggregated number of functions build per period.
  final List<Metric> builds;

  /// Aggregated sum of functions build storage per period.
  final List<Metric> buildsStorage;

  /// Aggregated sum of  functions build compute time per period.
  final List<Metric> buildsTime;

  /// Aggregated number of  functions execution per period.
  final List<Metric> executions;

  /// Aggregated number of functions execution compute time per period.
  final List<Metric> executionsTime;

  UsageFunctions({
    required this.range,
    required this.functionsTotal,
    required this.deploymentsTotal,
    required this.deploymentsStorageTotal,
    required this.buildsTotal,
    required this.buildsStorageTotal,
    required this.buildsTimeTotal,
    required this.executionsTotal,
    required this.executionsTimeTotal,
    required this.functions,
    required this.deployments,
    required this.deploymentsStorage,
    required this.builds,
    required this.buildsStorage,
    required this.buildsTime,
    required this.executions,
    required this.executionsTime,
  });

  factory UsageFunctions.fromMap(Map<String, dynamic> map) {
    return UsageFunctions(
      range: map['range'].toString(),
      functionsTotal: map['functionsTotal'],
      deploymentsTotal: map['deploymentsTotal'],
      deploymentsStorageTotal: map['deploymentsStorageTotal'],
      buildsTotal: map['buildsTotal'],
      buildsStorageTotal: map['buildsStorageTotal'],
      buildsTimeTotal: map['buildsTimeTotal'],
      executionsTotal: map['executionsTotal'],
      executionsTimeTotal: map['executionsTimeTotal'],
      functions:
          List<Metric>.from(map['functions']?.map((p) => Metric.fromMap(p))),
      deployments:
          List<Metric>.from(map['deployments']?.map((p) => Metric.fromMap(p))),
      deploymentsStorage: List<Metric>.from(
          map['deploymentsStorage']?.map((p) => Metric.fromMap(p))),
      builds: List<Metric>.from(map['builds']?.map((p) => Metric.fromMap(p))),
      buildsStorage: List<Metric>.from(
          map['buildsStorage']?.map((p) => Metric.fromMap(p))),
      buildsTime:
          List<Metric>.from(map['buildsTime']?.map((p) => Metric.fromMap(p))),
      executions:
          List<Metric>.from(map['executions']?.map((p) => Metric.fromMap(p))),
      executionsTime: List<Metric>.from(
          map['executionsTime']?.map((p) => Metric.fromMap(p))),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "range": range,
      "functionsTotal": functionsTotal,
      "deploymentsTotal": deploymentsTotal,
      "deploymentsStorageTotal": deploymentsStorageTotal,
      "buildsTotal": buildsTotal,
      "buildsStorageTotal": buildsStorageTotal,
      "buildsTimeTotal": buildsTimeTotal,
      "executionsTotal": executionsTotal,
      "executionsTimeTotal": executionsTimeTotal,
      "functions": functions.map((p) => p.toMap()).toList(),
      "deployments": deployments.map((p) => p.toMap()).toList(),
      "deploymentsStorage": deploymentsStorage.map((p) => p.toMap()).toList(),
      "builds": builds.map((p) => p.toMap()).toList(),
      "buildsStorage": buildsStorage.map((p) => p.toMap()).toList(),
      "buildsTime": buildsTime.map((p) => p.toMap()).toList(),
      "executions": executions.map((p) => p.toMap()).toList(),
      "executionsTime": executionsTime.map((p) => p.toMap()).toList(),
    };
  }
}
// https://github.com/appwrite/appwrite/blob/main/src/Appwrite/Utopia/Response/Model/UsageFunctions.php
// <?php

// namespace Appwrite\Utopia\Response\Model;

// use Appwrite\Utopia\Response;
// use Appwrite\Utopia\Response\Model;

// class UsageFunctions extends Model
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
//             ->addRule('functionsTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated number of functions.',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('deploymentsTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated number of functions deployments.',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('deploymentsStorageTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated sum of functions deployment storage.',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('buildsTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated number of functions build.',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('buildsStorageTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'total aggregated sum of functions build storage.',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('buildsTimeTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated sum of functions build compute time.',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('executionsTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total  aggregated number of functions execution.',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('executionsTimeTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated sum of functions  execution compute time.',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('functions', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated number of functions per period.',
//                 'default' => 0,
//                 'example' => 0,
//                 'array' => true
//             ])
//             ->addRule('deployments', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated number of functions deployment per period.',
//                 'default' => [],
//                 'example' => [],
//                 'array' => true
//             ])
//             ->addRule('deploymentsStorage', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated number of  functions deployment storage per period.',
//                 'default' => [],
//                 'example' => [],
//                 'array' => true
//             ])
//             ->addRule('builds', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated number of functions build per period.',
//                 'default' => [],
//                 'example' => [],
//                 'array' => true
//             ])
//             ->addRule('buildsStorage', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated sum of functions build storage per period.',
//                 'default' => [],
//                 'example' => [],
//                 'array' => true
//             ])
//             ->addRule('buildsTime', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated sum of  functions build compute time per period.',
//                 'default' => [],
//                 'example' => [],
//                 'array' => true
//             ])
//             ->addRule('executions', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated number of  functions execution per period.',
//                 'default' => [],
//                 'example' => [],
//                 'array' => true
//             ])

//             ->addRule('executionsTime', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated number of functions execution compute time per period.',
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
//         return 'UsageFunctions';
//     }

//     /**
//      * Get Type
//      *
//      * @return string
//      */
//     public function getType(): string
//     {
//         return Response::MODEL_USAGE_FUNCTIONS;
//     }
// }