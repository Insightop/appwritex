part of appwritex.models;

/// Rule List
class RuleList with EquatableMixin implements Model {
  /// Total number of rules documents that matched your query.
  final int total;

  /// List of rules.
  final List<Rule> rules;

  RuleList({
    required this.total,
    required this.rules,
  });

  factory RuleList.fromMap(Map<String, dynamic> map) {
    return RuleList(
      total: map['total'],
      rules: List<Rule>.from(map['rules'].map((r) => Rule.fromMap(r))),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "rules": rules.map((r) => r.toMap()).toList(),
    };
  }

  @override
  List<Object> get props => [total, rules];
}
