part of appwritex;

extension TeamsX on Teams {
  /// List all memberships
  ///
  /// Iterate through all teams of the project and accumulate memberships.
  Future<models.MembershipList> _listAllMemberships() async {
    List<models.Membership> membershipList = [];
    final teamList = await list();
    for (var team in teamList.teams) {
      listMemberships(teamId: team.$id)
          .then((v) => membershipList.addAll(v.memberships));
    }
    return models.MembershipList(
        total: membershipList.length, memberships: membershipList);
  }

  /// Get teams usage(Experimental, Not officially API)
  ///
  /// Get usage information on the current project's teams service.
  @Deprecated('Experimental, Not officially API')
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

  /// List team logs
  ///
  /// Get the team activity logs list by its unique ID.
  Future<models.LogList> listLogs(
      {required String teamId, List<String>? queries}) async {
    final String apiPath =
        '/teams/{teamId}/logs'.replaceAll('{teamId}', teamId);

    final Map<String, dynamic> apiParams = {
      'queries': queries,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.LogList.fromMap(res.data);
  }
}
