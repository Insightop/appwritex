import 'package:test/test.dart';
import 'package:appwritex/models.dart' as models;

void main() {
  group('model', () {
    test('Versions fromMap() toMap()', () {
      final versions = models.Versions(
        server: '1.0.0',
        clientWeb: '1.0.1',
        clientFlutter: '1.0.2',
        clientApple: '1.0.3',
        clientAndroid: '1.0.4',
        clientGraphql: '1.0.5',
        clientRest: '1.0.6',
        consoleWeb: '1.0.7',
        consoleCli: '1.0.8',
        serverNodejs: '1.0.9',
        serverDeno: '1.0.10',
        serverPhp: '1.0.11',
        serverPython: '1.0.12',
        serverRuby: '1.0.13',
        serverDotnet: '1.0.14',
        serverDart: '1.0.15',
        serverKotlin: '1.0.16',
        serverSwift: '1.0.17',
        serverGraphql: '1.0.18',
        serverRest: '1.0.19',
      );
      final map = versions.toMap();

      final result = models.Versions.fromMap(map);
      expect(result.server, versions.server);
      expect(result.clientWeb, versions.clientWeb);
      expect(result.clientFlutter, versions.clientFlutter);
      expect(result.clientApple, versions.clientApple);
      expect(result.clientAndroid, versions.clientAndroid);
      expect(result.clientGraphql, versions.clientGraphql);
      expect(result.clientRest, versions.clientRest);
      expect(result.consoleWeb, versions.consoleWeb);
      expect(result.consoleCli, versions.consoleCli);
      expect(result.serverNodejs, versions.serverNodejs);
      expect(result.serverDeno, versions.serverDeno);
      expect(result.serverPhp, versions.serverPhp);
      expect(result.serverPython, versions.serverPython);
      expect(result.serverRuby, versions.serverRuby);
      expect(result.serverDotnet, versions.serverDotnet);
      expect(result.serverDart, versions.serverDart);
      expect(result.serverKotlin, versions.serverKotlin);
      expect(result.serverSwift, versions.serverSwift);
      expect(result.serverGraphql, versions.serverGraphql);
      expect(result.serverRest, versions.serverRest);
    });
  });
}
