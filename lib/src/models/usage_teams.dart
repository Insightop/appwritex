part of appwritex.models;

/// Usage Teams
@experimental
class UsageTeams with EquatableMixin implements Model {
  /// Time range of the usage stats.
  final String range;

  /// Total aggregated number of teams.
  final int teamsTotal;

  /// Total aggregated number of team members.
  final int membershipsTotal;

  /// Aggregated number of teams per period.
  final List<Metric> teams;

  /// Aggregated number of memberships per period.
  final List<Metric> memberships;

  UsageTeams({
    required this.range,
    required this.teamsTotal,
    required this.membershipsTotal,
    required this.teams,
    required this.memberships,
  });

  factory UsageTeams.fromMap(Map<String, dynamic> map) {
    return UsageTeams(
      range: map['range'].toString(),
      teamsTotal: map['teamsTotal'],
      membershipsTotal: map['membershipsTotal'],
      teams: List<Metric>.from(map['teams']?.map((p) => Metric.fromMap(p))),
      memberships:
          List<Metric>.from(map['memberships']?.map((p) => Metric.fromMap(p))),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      'range': range,
      'teamsTotal': teamsTotal,
      'membershipsTotal': membershipsTotal,
      'teams': teams.map((p) => p.toMap()).toList(),
      'memberships': memberships.map((p) => p.toMap()).toList(),
    };
  }

  @override
  List<Object> get props =>
      [range, teamsTotal, membershipsTotal, teams, memberships];
}
