import 'package:freezed_annotation/freezed_annotation.dart';
part 'json_metadata.freezed.dart';
// part 'json_metadata.g.dart';

@freezed
class JsonMetaDataEntity with _$JsonMetaDataEntity {
  const factory JsonMetaDataEntity(
      {required final String app,
      required final String? format,
      required final List? tags,
      required final List? users,
      required final List image}) = _JsonMetaDataEntity;

  // factory JsonMetaDataEntity.fromJson(Map<String, Object?> json) => _$JsonMetaDataEntityFromJson(json);
}
