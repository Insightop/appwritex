part of appwritex.models;

/// Metric
class Metric implements Model {
  /// Metric value.
  final int value;

  /// Metric date in ISO 8601 format.
  final String date;

  Metric({
    required this.value,
    required this.date,
  });

  factory Metric.fromMap(Map<String, dynamic> map) {
    return Metric(
      value: map['value'],
      date: map['date'].toString(),
    );
  }
  @override
  Map<String, dynamic> toMap() {
    return {
      "value": value,
      "date": date,
    };
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Metric &&
          runtimeType == other.runtimeType &&
          value == other.value &&
          date == other.date;

  @override
  int get hashCode => value.hashCode ^ date.hashCode;
}
