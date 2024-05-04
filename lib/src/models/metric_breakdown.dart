part of appwritex.models;

/// Metric Breakdown
class MetricBreakdown implements Model {
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MetricBreakdown &&
          runtimeType == other.runtimeType &&
          resourceId == other.resourceId &&
          name == other.name &&
          value == other.value;

  @override
  int get hashCode => resourceId.hashCode ^ name.hashCode ^ value.hashCode;
}
