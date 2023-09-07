import 'package:hive/features/posts/domain/entities/post/json_metadata/json_metadata.dart';

class JsonMetaDataModel {
  static JsonMetaDataEntity fromJson(Map<String, dynamic> json) {
    return JsonMetaDataEntity(
      app: json['app'] as String,
      format: json['format'] as String? ?? "",
      tags: json['tags'] ?? [],
      users: asList(json['users']),
      image: asList(json['image']),
    );
  }

  static List asList(var json) {
    if (json != null && json is List) {
      return json;
    } else {
      if (json != null) return [json];
      return [];
    }
  }
}
