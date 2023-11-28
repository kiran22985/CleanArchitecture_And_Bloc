import 'package:tdd_tutorial/core/utils/typedef.dart';

abstract class UseCaseWithParams<Type, Params>{
  const UseCaseWithParams();
  ResultFuture<Type> call(Params params);
}

abstract class USeCaseWithoutParams<Type>{
  const USeCaseWithoutParams();
  ResultFuture<Type> call();
}