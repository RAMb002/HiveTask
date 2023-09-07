import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/features/posts/domain/entities/post/active_votes/active_votes.dart';
import 'package:hive/features/posts/domain/entities/post/json_metadata/json_metadata.dart';
import 'package:hive/features/posts/domain/entities/post/stats/stats.dart';
part 'post.freezed.dart';
// part 'post.g.dart';

@freezed
class PostEntity with _$PostEntity {
  const factory PostEntity({
    required final int id,
    required final String author,
    required final String permlink,
    required final String category,
    required final String title,
    required final String body,
    required final JsonMetaDataEntity jsonMetaData,
    required final String created,
    required final String updated,
    required final int depth,
    required final int children,
    required final int netRshares,
    required final bool isPaidOut,
    required final String payoutAt,
    required final double payout,
    required final String pendingPayoutValue,
    required final String authorPayoutValue,
    required final String curatorPayoutValue,
    required final String promoted,
    required final List replies,
    required final double authorReputation,
    required final StatsEntity stats,
    required final String url,
    required final String maxAcceptedPayout,
    required final int percentHbd,
    required final List<ActiveVotesEntity> activeVotes,
    required final List blacklists,
    required final String community,
    required final String communityTitle,
    required final String authorRole,
    required final String authorTitle,
  }) = _PostEntity;

  // factory PostEntity.fromJson(Map<String, Object?> json) => _$PostEntityFromJson(json);
}
