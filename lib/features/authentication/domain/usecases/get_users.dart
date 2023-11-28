import 'package:tdd_tutorial/core/usecase/usecase.dart';
import 'package:tdd_tutorial/core/utils/typedef.dart';
import 'package:tdd_tutorial/features/authentication/domain/repositories/authentication_repository.dart';

import '../entities/user.dart';

class GetUsers extends USeCaseWithoutParams{
  const GetUsers(this._repository);
  final AuthenticationRepository _repository;
  @override
  ResultFuture<List<User>> call()=> _repository.getUsers();

}