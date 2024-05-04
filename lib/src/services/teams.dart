part of appwritex;

extension TeamsX on Teams {
  /// List all memberships
  ///
  /// Iterate through all teams of the project and accumulate memberships.
  Future<models.MembershipList> _listAllMemberships() async {
    List<models.Membership> membershipList = [];
    final teams = list();
    teams.then((value) {
      for (var team in value.teams) {
        listMemberships(teamId: team.$id)
            .then((v) => membershipList.addAll(v.memberships));
      }
    });
    return models.MembershipList(
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
      membershipsTotal:
          await _listAllMemberships().then((value) => value.total),
      teams: [],
      memberships: [],
    );
  }
}
