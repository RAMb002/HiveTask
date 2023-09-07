import 'package:freezed_annotation/freezed_annotation.dart';
part 'active_votes.freezed.dart';
// part 'active_votes.g.dart';

@freezed
class ActiveVotesEntity with _$ActiveVotesEntity {
  const factory ActiveVotesEntity(
      {required final int rshares,
      required final String voter,
     }) = _ActiveVotesEntity;

  // factory ActiveVotesEntity.fromJson(Map<String, Object?> json) => _$ActiveVotesEntityFromJson(json);
}
