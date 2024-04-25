import 'package:meta/meta.dart';
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart';
import '../models/models.dart' as models;

extension MessagingExt on Messaging {
  /// List all subscribers
  ///
  ///Iterate through all subscribers of topics and accumulate them.
  Future<SubscriberList> _listSubscribers() async {
    List<Subscriber> subscriberList = [];
    final topics = listTopics();
    topics.then((value) {
      for (var topic in value.topics) {
        listSubscribers(topicId: topic.$id)
            .then((v) => subscriberList.addAll(v.subscribers));
      }
    });
    return SubscriberList(
        total: subscriberList.length, subscribers: subscriberList);
  }

  /// Get Usage Messaging(Experimental, Not officially API)
  ///
  /// Get usage information on the current project's messaging service.
  @experimental
  Future<models.UsageMessaging> getUsage() async {
    return models.UsageMessaging(
      range: '0',
      messagesTotal: await listMessages().then((value) => value.total),
      topicsTotal: await listTopics().then((value) => value.total),
      providersTotal: await listProviders().then((value) => value.total),
      subscriberTotal: await _listSubscribers().then((value) => value.total),
      messages: [],
      topics: [],
      providers: [],
      subscribers: [],
    );
  }
}
