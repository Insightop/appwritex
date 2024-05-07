part of appwritex.models;

/// Metric Breakdown
class MetricBreakdown with EquatableMixin implements Model {
  /// Resource ID.
  final String resourceId;

  /// Resource name.
  final String name;

  /// The value of this metric at the timestamp.
  final String value;

  MetricBreakdown({
    required this.resourceId,
    required this.name,
    required this.value,
  });

  factory MetricBreakdown.fromMap(Map<String, dynamic> map) {
    return MetricBreakdown(
      resourceId: map['resourceId'].toString(),
      name: map['name'].toString(),
      value: map['value'].toString(),
    );
  }
  @override
  Map<String, dynamic> toMap() {
    return {
      "resourceId": resourceId,
      "name": name,
      "value": value,
    };
  }

  @override
  List<Object> get props => [
        resourceId,
        name,
        value,
      ];
}
