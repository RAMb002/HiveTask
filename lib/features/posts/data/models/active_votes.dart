import 'package:hive/features/posts/domain/entities/post/active_votes/active_votes.dart';

class ActiveVotesModel{
  static ActiveVotesEntity fromJson(Map<String,dynamic> json){
    return ActiveVotesEntity(
      rshares: json['rshares'] as int,
      voter: json['voter'] as String,
     
    );
  }
}