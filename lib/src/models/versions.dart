import 'package:dart_appwrite/models.dart';

/// Versions
class Versions implements Model {
  /// Server version
  final String server;

  /// Web client version
  final String clientWeb;

  /// Flutter client version
  final String clientFlutter;

  /// Apple client version
  final String clientApple;

  /// Android client version
  final String clientAndroid;

  /// GraphQL client version
  final String clientGraphql;

  /// REST client version
  final String clientRest;

  /// Web console version
  final String consoleWeb;

  /// CLI console version
  final String consoleCli;

  /// Node.js server version
  final String serverNodejs;

  /// Deno server version
  final String serverDeno;

  /// PHP server version
  final String serverPhp;

  /// Python server version
  final String serverPython;

  /// Ruby server version
  final String serverRuby;

  /// .NET server version
  final String serverDotnet;

  /// Dart server version
  final String serverDart;

  /// Kotlin server version
  final String serverKotlin;

  /// Swift server version
  final String serverSwift;

  /// GraphQL server version
  final String serverGraphql;

  /// REST server version
  final String serverRest;

  Versions({
    required this.server,
    required this.clientWeb,
    required this.clientFlutter,
    required this.clientApple,
    required this.clientAndroid,
    required this.clientGraphql,
    required this.clientRest,
    required this.consoleWeb,
    required this.consoleCli,
    required this.serverNodejs,
    required this.serverDeno,
    required this.serverPhp,
    required this.serverPython,
    required this.serverRuby,
    required this.serverDotnet,
    required this.serverDart,
    required this.serverKotlin,
    required this.serverSwift,
    required this.serverGraphql,
    required this.serverRest,
  });
  factory Versions.fromMap(Map<String, dynamic> map) {
    return Versions(
      server: map['server'].toString(),
      clientWeb: map['client-web'].toString(),
      clientFlutter: map['client-flutter'].toString(),
      clientApple: map['client-apple'].toString(),
      clientAndroid: map['client-android'].toString(),
      clientGraphql: map['client-graphql'].toString(),
      clientRest: map['client-rest'].toString(),
      consoleWeb: map['console-web'].toString(),
      consoleCli: map['console-cli'].toString(),
      serverNodejs: map['server-nodejs'].toString(),
      serverDeno: map['server-deno'].toString(),
      serverPhp: map['server-php'].toString(),
      serverPython: map['server-python'].toString(),
      serverRuby: map['server-ruby'].toString(),
      serverDotnet: map['server-dotnet'].toString(),
      serverDart: map['server-dart'].toString(),
      serverKotlin: map['server-kotlin'].toString(),
      serverSwift: map['server-swift'].toString(),
      serverGraphql: map['server-graphql'].toString(),
      serverRest: map['server-rest'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "server": server,
      "client-web": clientWeb,
      "client-flutter": clientFlutter,
      "client-apple": clientApple,
      "client-android": clientAndroid,
      "client-graphql": clientGraphql,
      "client-rest": clientRest,
      "console-web": consoleWeb,
      "console-cli": consoleCli,
      "server-nodejs": serverNodejs,
      "server-deno": serverDeno,
      "server-php": serverPhp,
      "server-python": serverPython,
      "server-ruby": serverRuby,
      "server-dotnet": serverDotnet,
      "server-dart": serverDart,
      "server-kotlin": serverKotlin,
      "server-swift": serverSwift,
      "server-graphql": serverGraphql,
      "server-rest": serverRest,
    };
  }
}

// {
//     "server": "1.5.4",
//     "client-web": "14.0.0",
//     "client-flutter": "12.0.1",
//     "client-apple": "5.0.0",
//     "client-android": "5.0.0",
//     "client-graphql": "October 2021",
//     "client-rest": "",
//     "console-web": "0.6.1",
//     "console-cli": "5.0.2",
//     "server-nodejs": "12.0.1",
//     "server-deno": "10.0.1",
//     "server-php": "11.0.1",
//     "server-python": "5.0.2",
//     "server-ruby": "11.0.1",
//     "server-dotnet": "0.8.1",
//     "server-dart": "11.0.2",
//     "server-kotlin": "5.0.1",
//     "server-swift": "5.0.1",
//     "server-graphql": "October 2021",
//     "server-rest": ""
// }