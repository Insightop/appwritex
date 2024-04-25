import 'package:dart_appwrite/models.dart';
import 'models.dart';

/// Usage Users
class UsageUsers implements Model {
  /// Time range of the usage stats.
  final String range;

  /// Total aggregated number of statistics of users.
  final int usersTotal;

  /// Total aggregated number of active sessions.
  final int sessionsTotal;

  /// Aggregated number of users per period.
  final List<Metric> users;

  /// Aggregated number of active sessions  per period.
  final List<Metric> sessions;

  UsageUsers({
    required this.range,
    required this.usersTotal,
    required this.sessionsTotal,
    required this.users,
    required this.sessions,
  });

  factory UsageUsers.fromMap(Map<String, dynamic> map) {
    return UsageUsers(
      range: map['range'].toString(),
      usersTotal: map['usersTotal'],
      sessionsTotal: map['sessionsTotal'],
      users: List<Metric>.from(map['users']?.map((p) => Metric.fromMap(p))),
      sessions:
          List<Metric>.from(map['sessions']?.map((p) => Metric.fromMap(p))),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "range": range,
      "usersTotal": usersTotal,
      "sessionsTotal": sessionsTotal,
      "users": users.map((p) => p.toMap()).toList(),
      "sessions": sessions.map((p) => p.toMap()).toList(),
    };
  }
}

// https://github.com/appwrite/appwrite/blob/main/src/Appwrite/Utopia/Response/Model/UsageUsers.php
// <?php

// namespace Appwrite\Utopia\Response\Model;

// use Appwrite\Utopia\Response;
// use Appwrite\Utopia\Response\Model;

// class UsageUsers extends Model
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
//             ->addRule('usersTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated number of statistics of users.',
//                 'default' => 0,
//                 'example' => 0,
//             ])

//             ->addRule('sessionsTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated number of active sessions.',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('users', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated number of users per period.',
//                 'default' => [],
//                 'example' => [],
//                 'array' => true
//             ])

//             ->addRule('sessions', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated number of active sessions  per period.',
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
//         return 'UsageUsers';
//     }

//     /**
//      * Get Type
//      *
//      * @return string
//      */
//     public function getType(): string
//     {
//         return Response::MODEL_USAGE_USERS;
//     }
// }