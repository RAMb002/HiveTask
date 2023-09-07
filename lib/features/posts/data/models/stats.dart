import 'package:hive/features/posts/domain/entities/post/stats/stats.dart';

class StatsModel{
  static StatsEntity fromJson(Map<String,dynamic> json){
    return StatsEntity(
      hide: json['hide'] as bool,
      gray: json['gray'] as bool,
      totalVotes: (json['total_votes'] as num ).toDouble(),
      flagWeight: (json['flag_weight'] as num).toDouble(),
    );
  }
}