import 'package:get_it/get_it.dart';
import 'package:hive/features/posts/data/data_source/datasource.dart';
import 'package:hive/features/posts/data/data_source/datasource_impl.dart';
import 'package:hive/features/posts/data/repository/repository.dart';
import 'package:hive/features/posts/domain/repository/repository.dart';
import 'package:hive/features/posts/domain/usecases/get_posts.dart';


final getIt = GetIt.instance;

void init() {

  getIt.registerLazySingleton<PostFeedRemoteDataSource>(
      () => PostFeedRemoteDataSourceImpl());

  getIt.registerLazySingleton<PostFeedRepository>(
      () => PostFeedRepositoryImpl(remoteDataSource: getIt()));

   getIt.registerLazySingleton<GetPostsUsecase>(
      () => GetPostsUsecase(repository: getIt()));
}