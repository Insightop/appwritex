part of appwritex.models;

/// Usage Function
class UsageFunction with EquatableMixin implements Model {
  /// The time range of the usage stats.
  final String range;

  /// Total aggregated number of function deployments.
  final int deploymentsTotal;

  /// Total aggregated sum of function deployments storage.
  final int deploymentsStorageTotal;

  /// Total aggregated number of function builds.
  final int buildsTotal;

  /// total aggregated sum of function builds storage.
  final int buildsStorageTotal;

  /// Total aggregated sum of function builds compute time.
  final int buildsTimeTotal;

  /// Total  aggregated number of function executions.
  final int executionsTotal;

  /// Total aggregated sum of function  executions compute time.
  final int executionsTimeTotal;

  /// Aggregated number of function deployments per period.
  final List<Metric> deployments;

  /// Aggregated number of  function deployments storage per period.
  final List<Metric> deploymentsStorage;

  /// Aggregated number of function builds per period.
  final List<Metric> builds;

  /// Aggregated sum of function builds storage per period.
  final List<Metric> buildsStorage;

  /// Aggregated sum of function builds compute time per period.
  final List<Metric> buildsTime;

  /// Aggregated number of function executions per period.
  final List<Metric> executions;

  /// Aggregated number of function executions compute time per period.
  final List<Metric> executionsTime;

  UsageFunction({
    required this.range,
    required this.deploymentsTotal,
    required this.deploymentsStorageTotal,
    required this.buildsTotal,
    required this.buildsStorageTotal,
    required this.buildsTimeTotal,
    required this.executionsTotal,
    required this.executionsTimeTotal,
    required this.deployments,
    required this.deploymentsStorage,
    required this.builds,
    required this.buildsStorage,
    required this.buildsTime,
    required this.executions,
    required this.executionsTime,
  });

  factory UsageFunction.fromMap(Map<String, dynamic> map) {
    return UsageFunction(
      range: map['range'].toString(),
      deploymentsTotal: map['deploymentsTotal'],
      deploymentsStorageTotal: map['deploymentsStorageTotal'],
      buildsTotal: map['buildsTotal'],
      buildsStorageTotal: map['buildsStorageTotal'],
      buildsTimeTotal: map['buildsTimeTotal'],
      executionsTotal: map['executionsTotal'],
      executionsTimeTotal: map['executionsTimeTotal'],
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
      "deploymentsTotal": deploymentsTotal,
      "deploymentsStorageTotal": deploymentsStorageTotal,
      "buildsTotal": buildsTotal,
      "buildsStorageTotal": buildsStorageTotal,
      "buildsTimeTotal": buildsTimeTotal,
      "executionsTotal": executionsTotal,
      "executionsTimeTotal": executionsTimeTotal,
      "deployments": deployments.map((p) => p.toMap()).toList(),
      "deploymentsStorage": deploymentsStorage.map((p) => p.toMap()).toList(),
      "builds": builds.map((p) => p.toMap()).toList(),
      "buildsStorage": buildsStorage.map((p) => p.toMap()).toList(),
      "buildsTime": buildsTime.map((p) => p.toMap()).toList(),
      "executions": executions.map((p) => p.toMap()).toList(),
      "executionsTime": executionsTime.map((p) => p.toMap()).toList(),
    };
  }

  @override
  List<Object> get props => [
        range,
        deploymentsTotal,
        deploymentsStorageTotal,
        buildsTotal,
        buildsStorageTotal,
        buildsTimeTotal,
        executionsTotal,
        executionsTimeTotal,
        deployments,
        deploymentsStorage,
        builds,
        buildsStorage,
        buildsTime,
        executions,
        executionsTime,
      ];
}

// https://github.com/appwrite/appwrite/blob/main/src/Appwrite/Utopia/Response/Model/UsageFunction.php
// <?php

// namespace Appwrite\Utopia\Response\Model;

// use Appwrite\Utopia\Response;
// use Appwrite\Utopia\Response\Model;

// class UsageFunction extends Model
// {
//     public function __construct()
//     {
//         $this
//             ->addRule('range', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'The time range of the usage stats.',
//                 'default' => '',
//                 'example' => '30d',
//             ])
//             ->addRule('deploymentsTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated number of function deployments.',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('deploymentsStorageTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated sum of function deployments storage.',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('buildsTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated number of function builds.',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('buildsStorageTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'total aggregated sum of function builds storage.',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('buildsTimeTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated sum of function builds compute time.',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('executionsTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total  aggregated number of function executions.',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('executionsTimeTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated sum of function  executions compute time.',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('deployments', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated number of function deployments per period.',
//                 'default' => [],
//                 'example' => [],
//                 'array' => true
//             ])
//             ->addRule('deploymentsStorage', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated number of  function deployments storage per period.',
//                 'default' => [],
//                 'example' => [],
//                 'array' => true
//             ])
//             ->addRule('builds', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated number of function builds per period.',
//                 'default' => [],
//                 'example' => [],
//                 'array' => true
//             ])
//             ->addRule('buildsStorage', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated sum of function builds storage per period.',
//                 'default' => [],
//                 'example' => [],
//                 'array' => true
//             ])
//             ->addRule('buildsTime', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated sum of function builds compute time per period.',
//                 'default' => [],
//                 'example' => [],
//                 'array' => true
//             ])
//             ->addRule('executions', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated number of function executions per period.',
//                 'default' => [],
//                 'example' => [],
//                 'array' => true
//             ])

//             ->addRule('executionsTime', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated number of function executions compute time per period.',
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
//         return 'UsageFunction';
//     }

//     /**
//      * Get Type
//      *
//      * @return string
//      */
//     public function getType(): string
//     {
//         return Response::MODEL_USAGE_FUNCTION;
//     }
// }