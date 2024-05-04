import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:appwritex/appwritex.dart';

class MyService {
  MyService(
      {String endPoint = 'https://cloud.appwrite.io/v1',
      String project = '',
      String key = '',
      bool selfSigned = false}) {
    _apiClient.setEndpoint(endPoint).setProject(project).setKey(key);
    _publicClient.setEndpoint(endPoint);
  }

  final Client _apiClient = Client();
  final Client _publicClient = Client();

  late final Avatars _avatars = Avatars(_apiClient);
  late final Console _console = Console(_apiClient);
  late final Databases _databases = Databases(_apiClient);
  late final Functions _functions = Functions(_apiClient);
  late final Health _health = Health(_apiClient);
  late final Messaging _messaging = Messaging(_apiClient);
  late final Project _project = Project(_apiClient);
  late final Projects _projects = Projects(_apiClient);
  late final Public _public = Public(_publicClient);
  late final Proxy _proxy = Proxy(_apiClient);
  late final Storage _storage = Storage(_apiClient);
  late final Teams _teams = Teams(_apiClient);
  late final Users _users = Users(_apiClient);
  late final Vcs _vcs = Vcs(_apiClient);
  late final Usage _usage = Usage(_apiClient);

  Avatars get avatars => _avatars;
  Console get console => _console;
  Databases get databases => _databases;
  Functions get functions => _functions;
  Health get health => _health;
  Messaging get messaging => _messaging;
  Project get project => _project;
  Projects get projects => _projects;
  Proxy get proxy => _proxy;
  Public get public => _public;
  Storage get storage => _storage;
  Teams get teams => _teams;
  Users get users => _users;
  Vcs get vcs => _vcs;
  Usage get usage => _usage;
}

void main() async {
  final service = MyService(
    endPoint: 'https://cloud.appwrite.io/v1',
    project: '1234567890',
    key: '1234567890',
  );
  // Avatars
  service.avatars
      .getCardsCloud(userId: '1234')
      .then((res) => print('Cards: $res'));
  service.avatars
      .getCardsCloudBack(userId: '1234')
      .then((res) => print('Cards Back: $res'));
  service.avatars
      .getCardsCloudOG(userId: '1234')
      .then((res) => print('Cards OG: $res'));

  // Console
  service.console
      .getVariables()
      .then((res) => print('Console Variables: $res'));

  // Databases
  service.databases
      .getCollectionUsage(databaseId: '123', collectionId: '123')
      .then((res) => print('Collection Usage: $res'));
  service.databases
      .getDatabaseUsage(databaseId: '123')
      .then((res) => print('Database Usage: $res'));
  service.databases.getUsage().then((res) => print('Databases Usage: $res'));

  // Functions
  service.functions
      .getFunctionUsage(functionId: '123')
      .then((res) => print('Function Usage: $res'));
  service.functions.getUsage().then((res) => print('Functions Usage: $res'));

  // Health
  service.health.getStats().then((res) => print('Health Stats: $res'));

  // Messaging
  service.messaging.getUsage().then((res) => print('Messaging Usage: $res'));

  // Project
  service.project
      .getVariables()
      .then((res) => print('Project Variables: $res'));
  service.project.getUsage().then((res) => print('Project Usage: $res'));

  // Projects
  service.projects.list().then((res) => print('Projects: $res'));

  // Proxy
  service.proxy.listRules().then((res) => print('Proxy Rules: $res'));

  // Public
  service.public.getVersions().then((res) => print('Public Versions: $res'));
  service.public
      .getHealthVersion()
      .then((res) => print('Public Health Version: $res'));

  // Storage
  service.storage
      .getBucketUsage(bucketId: '123')
      .then((res) => print('Bucket Usage: $res'));
  service.storage.getUsage().then((res) => print('Storage Usage: $res'));

  // Teams
  service.teams.getUsage().then((res) => print('Teams Usage: $res'));

  // Users
  service.users.getUsage().then((res) => print('Users Usage: $res'));

  // Vcs
  service.vcs
      .listInstallations()
      .then((res) => print('Vcs Installations: $res'));

  // Usage
  service.usage
      .getBucketUsage(bucketId: '123')
      .then((res) => print('Bucket Usage: $res'));
  service.usage
      .getCollectionUsage(databaseId: '123', collectionId: '123')
      .then((res) => print('Collection Usage: $res'));
  service.usage
      .getDatabaseUsage(databaseId: '123')
      .then((res) => print('Database Usage: $res'));
  service.usage
      .getFunctionUsage(functionId: '123')
      .then((res) => print('Function Usage: $res'));
  service.usage
      .getFunctionsUsage()
      .then((res) => print('Functions Usage: $res'));
  service.usage
      .getMessagingUsage()
      .then((res) => print('Messaging Usage: $res'));
  service.usage.getProjectUsage().then((res) => print('Project Usage: $res'));
  service.usage.getStorageUsage().then((res) => print('Storage Usage: $res'));
  service.usage.getTeamsUsage().then((res) => print('Teams Usage: $res'));
  service.usage.getUsersUsage().then((res) => print('Users Usage: $res'));
}
