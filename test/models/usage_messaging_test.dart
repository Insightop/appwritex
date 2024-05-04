import 'package:test/test.dart';
import 'package:appwritex/models.dart' as models;

void main() {
  group('model', () {
    test('UsageMessaging fromMap() toMap()', () {
      final usageMessaging = models.UsageMessaging(
        range: '30d',
        messagesTotal: 65535,
        topicsTotal: 65535,
        providersTotal: 65535,
        subscriberTotal: 65535,
        messages: [
          models.Metric(
            value: 65535,
            date: DateTime.now().toIso8601String(),
          ),
        ],
        topics: [
          models.Metric(
            value: 65535,
            date: DateTime.now().toIso8601String(),
          ),
        ],
        providers: [
          models.Metric(
            value: 65535,
            date: DateTime.now().toIso8601String(),
          ),
        ],
        subscribers: [
          models.Metric(
            value: 65535,
            date: DateTime.now().toIso8601String(),
          ),
        ],
      );
      final map = usageMessaging.toMap();

      final result = models.UsageMessaging.fromMap(map);
      expect(result.range, usageMessaging.range);
      expect(result.messagesTotal, usageMessaging.messagesTotal);
      expect(result.topicsTotal, usageMessaging.topicsTotal);
      expect(result.providersTotal, usageMessaging.providersTotal);
      expect(result.subscriberTotal, usageMessaging.subscriberTotal);
      expect(result.messages, usageMessaging.messages);
      expect(result.topics, usageMessaging.topics);
      expect(result.providers, usageMessaging.providers);
      expect(result.subscribers, usageMessaging.subscribers);
    });
  });
}
