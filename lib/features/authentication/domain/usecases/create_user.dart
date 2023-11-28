import 'package:equatable/equatable.dart';
import 'package:tdd_tutorial/core/usecase/usecase.dart';
import 'package:tdd_tutorial/features/authentication/domain/repositories/authentication_repository.dart';

import '../../../../core/utils/typedef.dart';

class CreateUser extends UseCaseWithParams<void, CreateUserParams> {
  const CreateUser(this._repository);

  final AuthenticationRepository _repository;

  @override
  ResultVoid call(CreateUserParams params) => _repository.createUser(
      id: params.id,
      name: params.name,
      createdAt: params.createdAt,
      avatar: params.avatar);

// ResultVoid createUser({
//
//   required String id,
//   required String name,
//   required String createdAt,
//   required String avatar,
//
// }) async => _repository.createUser(id: id, name: name, createdAt: createdAt, avatar: avatar);
}

class CreateUserParams extends Equatable {
  final String id;
  final String name;
  final String createdAt;
  final String avatar;

  const CreateUserParams(
      {required this.id,
      required this.avatar,
      required this.createdAt,
      required this.name});

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, createdAt, avatar];
}
