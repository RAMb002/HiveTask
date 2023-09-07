import 'package:dartz/dartz.dart';
import 'package:hive/core/failure.dart';

abstract class UseCase<Type, Param> {
  Future<Type> call(Param param);
}

abstract class UseCaseWithFailure<Type, Param> {
  Future<Either<Failure, Type>> call(Param param);
}

class NoParam {
  const NoParam();
}