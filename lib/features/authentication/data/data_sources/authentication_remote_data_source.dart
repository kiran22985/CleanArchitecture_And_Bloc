import 'package:tdd_tutorial/features/authentication/data/models/user_model.dart';

import '../../../../core/utils/typedef.dart';

abstract class AuthenticationRemoteDataSource {
  ResultVoid createUser({

    required String id,
    required String name,
    required String createdAt,
    required String avatar,

  });

  ResultFuture<List<UserModels>> getUsers();
}