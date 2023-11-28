import 'package:tdd_tutorial/core/errors/failure.dart';
import 'package:tdd_tutorial/core/utils/typedef.dart';
import 'package:tdd_tutorial/features/authentication/domain/entities/user.dart';
import 'package:dartz/dartz.dart';
abstract class AuthenticationRepository{
  const AuthenticationRepository();
 ResultVoid createUser({

    required String id,
    required String name,
    required String createdAt,
    required String avatar,

});

  ResultFuture<List<User>> getUsers();
}