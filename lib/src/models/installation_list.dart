import 'package:dart_appwrite/models.dart';

import 'installation.dart';

/// Installation List
class InstallationList implements Model {
  /// Total number of installations documents that matched your query.
  final int total;

  /// List of installations.
  final List<Installation> installations;

  InstallationList({
    required this.total,
    required this.installations,
  });

  factory InstallationList.fromMap(Map<String, dynamic> map) {
    return InstallationList(
      total: map['total'],
      installations: List<Installation>.from(
          map['installations'].map((i) => Installation.fromMap(i))),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "installations": installations.map((i) => i.toMap()).toList(),
    };
  }
}

// https://github.com/appwrite/appwrite/blob/main/src/Appwrite/Utopia/Response/Model/variablelist.php

