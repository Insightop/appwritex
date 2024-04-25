import 'package:meta/meta.dart';
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart';
import '../models/models.dart' as models;

extension TeamsExt on Teams {
  /// List all memberships
  ///
  /// Iterate through all teams of the project and accumulate memberships.
  Future<MembershipList> _listMemberships() async {
    List<Membership> membershipList = [];
    final teams = list();
    teams.then((value) {
      for (var team in value.teams) {
        listMemberships(teamId: team.$id)
            .then((v) => membershipList.addAll(v.memberships));
      }
    });
    return MembershipList(
        total: membershipList.length, memberships: membershipList);
  }

  /// Get teams usage
  ///
  /// Get usage information on the current project's teams service.
  @experimental
  Future<models.UsageTeams> getUsage({
    String? range,
  }) async {
    return models.UsageTeams(
      range: '0',
      teamsTotal: await list().then((value) => value.total),
      membershipsTotal: await _listMemberships().then((value) => value.total),
      teams: [],
      memberships: [],
    );
  }
}
