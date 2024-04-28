import 'dart:typed_data';

import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/src/enums.dart';
import '../models/models.dart' as models;

extension AvatarsExt on Avatars {
  /// Get Cloud Card
  ///
  /// Get a cloud card image by its public ID.
  Future<Uint8List> getCardsCloud({required String userId}) async {
    final String apiPath = '/cards/cloud';

    final Map<String, dynamic> params = {
      'userId': userId,
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: params, responseType: ResponseType.bytes);
    return res.data;
  }

  /// Get Cloud Card Back
  ///
  /// Get a cloud card back image by its public ID.
  Future<Uint8List> getCardsCloudBack({required String userId}) async {
    final String apiPath = '/cards/cloud-back';

    final Map<String, dynamic> params = {
      'userId': userId,
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: params, responseType: ResponseType.bytes);
    return res.data;
  }

  /// Get Cloud Card OG
  ///
  /// Get a cloud card OG image by its public ID.
  Future<Uint8List> getCardsCloudOG({required String userId}) async {
    final String apiPath = '/cards/cloud-og';

    final Map<String, dynamic> params = {
      'userId': userId,
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: params, responseType: ResponseType.bytes);
    return res.data;
  }
}
