part of appwritex.models;

/// Usage (Experimental, Not officially API)
class Usage implements Model {
  // Databases usage
  UsageDatabases databases;

  // Functions usage
  UsageFunctions functions;

  // Messaging usage
  UsageMessaging messaging;

  // Storage usage
  UsageStorage storage;

  // Teams usage
  UsageTeams teams;

  // Users usage
  UsageUsers users;

  Usage({
    required this.databases,
    required this.functions,
    required this.messaging,
    required this.storage,
    required this.teams,
    required this.users,
  });

  factory Usage.fromMap(Map<String, dynamic> map) {
    return Usage(
      databases: UsageDatabases.fromMap(map['databases']),
      functions: UsageFunctions.fromMap(map['functions']),
      messaging: UsageMessaging.fromMap(map['messaging']),
      storage: UsageStorage.fromMap(map['storage']),
      teams: UsageTeams.fromMap(map['teams']),
      users: UsageUsers.fromMap(map['users']),
    );
  }
  @override
  Map<String, dynamic> toMap() {
    return {
      'databases': databases.toMap(),
      'functions': functions.toMap(),
      'messaging': messaging.toMap(),
      'storage': storage.toMap(),
      'teams': teams.toMap(),
      'users': users.toMap(),
    };
  }
}
