part of appwritex;

class Vcs extends Service {
  Vcs(super.client);

  /// List installations(scope: vcs.read)
  ///
  /// Get a list of all the VCS (Version Control System) installations available
  @Deprecated('Need scope: vcs.read')
  Future<models.InstallationList> listInstallations() async {
    final String apiPath = '/vcs/installations';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.InstallationList.fromMap(res.data);
  }
}
