part of appwritex;

class Usage extends Service {
  Usage(super.client);

  Future<models.UsageCollection> getCollectionUsage(
          {required String databaseId,
          required String collectionId,
          String? range}) async =>
      Databases(client).getCollectionUsage(
          databaseId: databaseId, collectionId: collectionId);

  Future<models.UsageDatabase> getDatabaseUsage(
          {required String databaseId, String? range}) async =>
      Databases(client).getDatabaseUsage(databaseId: databaseId);

  Future<models.UsageDatabases> getDatabasesUsage({String? range}) async =>
      Databases(client).getUsage(range: range);

  Future<models.UsageFunction> getFunctionUsage(
          {required String functionId, String? range}) async =>
      Functions(client).getFunctionUsage(functionId: functionId, range: range);

  Future<models.UsageFunctions> getFunctionsUsage({String? range}) async =>
      Functions(client).getUsage(range: range);

  @Deprecated('Experimental, Not officially API.')
  Future<models.UsageProject> getProjectUsage({String? range}) async =>
      Project(client).getUsage(range: range);

  Future<models.UsageBucket> getBucketUsage(
          {required String bucketId, String? range}) async =>
      Storage(client).getBucketUsage(bucketId: bucketId, range: range);

  Future<models.UsageStorage> getStorageUsage({String? range}) async =>
      Storage(client).getUsage(range: range);

  Future<models.UsageUsers> getUsersUsage({String? range}) async =>
      Users(client).getUsage(range: range);

  @Deprecated('Experimental, Not officially API.')
  Future<models.UsageTeams> getTeamsUsage({String? range}) async =>
      Teams(client).getUsage(range: range);

  @Deprecated('Experimental, Not officially API.')
  Future<models.UsageMessaging> getMessagingUsage({String? range}) async =>
      Messaging(client).getUsage(range: range);
}
