import 'package:hive/features/posts/data/models/active_votes.dart';
import 'package:hive/features/posts/data/models/json_metadata.dart';
import 'package:hive/features/posts/data/models/stats.dart';
import 'package:hive/features/posts/domain/entities/post/post/post.dart';

class PostModel {
  static PostEntity fromJson(Map<String, dynamic> json) {
    return PostEntity(
      id: json['post_id'] as int,
      author: json['author'] as String,
      permlink: json['permlink'] as String,
      title: json['title'] as String,
      category: json['category'] as String? ?? "",
      body: json['body'] as String,
      jsonMetaData: JsonMetaDataModel.fromJson(
          json['json_metadata'] as Map<String, dynamic>),
      created:_formatTimeDifference(DateTime.parse(json['created'])) ,
      updated:_formatTimeDifference(DateTime.parse(json['updated'])) ,
      depth: json['depth'] as int,
      children: json['children'] as int,
      netRshares: json['net_rshares'] as int,
      isPaidOut: json['is_paidout'] as bool,
      payoutAt:_formatTimeDifference(DateTime.parse(json['payout_at'])) ,
      payout:double.parse(json['payout'].toStringAsFixed(2)),
      pendingPayoutValue: json['pending_payout_value'] as String,
      authorPayoutValue: json['author_payout_value'] as String,
      curatorPayoutValue: json['curator_payout_value'] as String,
      promoted: json['promoted'] as String,
      replies: json['replies'] as List<dynamic>,
      authorReputation: (json['author_reputation'] as num).toDouble(),
      stats: StatsModel.fromJson(json['stats'] as Map<String, dynamic>),
      url: json['url'] as String,
      maxAcceptedPayout: json['max_accepted_payout'] as String,
      percentHbd: json['percent_hbd'] as int,
      activeVotes: (json['active_votes'] as List<dynamic>)
          .map((e) => ActiveVotesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      blacklists: json['blacklists'] as List<dynamic>,
      community: json['community'] as String? ?? "",
      communityTitle: json['community_title'] as String? ?? "",
      authorRole:  json['author_role'] as String? ?? "",
      authorTitle: json['author_title'] as String? ?? ""
    );
  }

  static String _formatTimeDifference(DateTime timestamp) {
    final currentTime = DateTime.now();
    final difference = currentTime.difference(timestamp);

    if (difference.inSeconds < 60) {
      return 'now';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} min ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} hours ago';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} days ago';
    } else if (difference.inDays < 30) {
      final weeks = (difference.inDays / 7).floor();
      return '$weeks weeks ago';
    } else if (difference.inDays < 365) {
      final months = (difference.inDays / 30).floor();
      return '$months months ago';
    } else {
      final years = (difference.inDays / 365).floor();
      return '$years years ago';
    }
  }
}
