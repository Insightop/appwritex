part of appwritex.models;

/// Usage Messaging
@experimental
class UsageMessaging implements Model {
  /// Time range of the usage stats.
  final String range;

  /// Total aggregated number of messages.
  final int messagesTotal;

  /// Total aggregated number of message topics.
  final int topicsTotal;

  /// Total aggregated number of message providers.
  final int providersTotal;

  /// Total aggregated number of messages subscriber.
  final int subscriberTotal;

  /// Aggregated number of messages per period.
  final List<Metric> messages;

  /// Aggregated number of topics per period.
  final List<Metric> topics;

  /// Aggregated number of providers per period.
  final List<Metric> providers;

  /// Aggregated number of subscribers per period.
  final List<Metric> subscribers;

  UsageMessaging({
    required this.range,
    required this.messagesTotal,
    required this.topicsTotal,
    required this.providersTotal,
    required this.subscriberTotal,
    required this.messages,
    required this.topics,
    required this.providers,
    required this.subscribers,
  });

  factory UsageMessaging.fromMap(Map<String, dynamic> map) {
    return UsageMessaging(
      range: map['range'].toString(),
      messagesTotal: map['messagesTotal'],
      topicsTotal: map['topicsTotal'],
      providersTotal: map['providersTotal'],
      subscriberTotal: map['subscriberTotal'],
      messages:
          List<Metric>.from(map['messages']?.map((p) => Metric.fromMap(p))),
      topics: List<Metric>.from(map['topics']?.map((p) => Metric.fromMap(p))),
      providers:
          List<Metric>.from(map['providers']?.map((p) => Metric.fromMap(p))),
      subscribers:
          List<Metric>.from(map['subscribers']?.map((p) => Metric.fromMap(p))),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "range": range,
      "messagesTotal": messagesTotal,
      "topicsTotal": topicsTotal,
      "providersTotal": providersTotal,
      "subscriberTotal": subscriberTotal,
      "messages": messages.map((p) => p.toMap()).toList(),
      "topics": topics.map((p) => p.toMap()).toList(),
      "providers": providers.map((p) => p.toMap()).toList(),
      "subscribers": subscribers.map((p) => p.toMap()).toList(),
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UsageMessaging &&
        other.range == range &&
        other.messagesTotal == messagesTotal &&
        other.topicsTotal == topicsTotal &&
        other.providersTotal == providersTotal &&
        other.subscriberTotal == subscriberTotal &&
        ListEquality().equals(other.messages, messages) &&
        ListEquality().equals(other.topics, topics) &&
        ListEquality().equals(other.providers, providers) &&
        ListEquality().equals(other.subscribers, subscribers);
  }

  @override
  int get hashCode {
    return range.hashCode ^
        messagesTotal.hashCode ^
        topicsTotal.hashCode ^
        providersTotal.hashCode ^
        subscriberTotal.hashCode ^
        messages.hashCode ^
        topics.hashCode ^
        providers.hashCode ^
        subscribers.hashCode;
  }
}
