import 'package:freezed_annotation/freezed_annotation.dart';
part 'stats.freezed.dart';
// part 'stats.g.dart';

@freezed
class StatsEntity with _$StatsEntity {
  const factory StatsEntity(
      {required final bool hide,
      required final bool gray,
      required final double totalVotes,
      required final double flagWeight,}) = _StatsEntity;

  // factory StatsEntity.fromJson(Map<String, Object?> json) => _$StatsEntityFromJson(json);
}
