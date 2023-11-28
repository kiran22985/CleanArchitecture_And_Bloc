import 'package:dartz/dartz.dart';
import 'package:tdd_tutorial/core/errors/exceptions.dart';
import 'package:tdd_tutorial/core/errors/failure.dart';
import 'package:tdd_tutorial/core/utils/typedef.dart';
import 'package:tdd_tutorial/features/authentication/data/data_sources/authentication_remote_data_source.dart';
import 'package:tdd_tutorial/features/authentication/domain/entities/user.dart';
import 'package:tdd_tutorial/features/authentication/domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImplementation implements AuthenticationRepository{

  final AuthenticationRemoteDataSource remoteDataSource;
  AuthenticationRepositoryImplementation(this.remoteDataSource);
  @override
  ResultVoid createUser({required String id, required String name, required String createdAt, required String avatar}) async{
   try{
     await remoteDataSource.createUser(id: id, name: name, createdAt: createdAt, avatar: avatar);
     return const Right(null);
   }on APIException catch(e){
     return Left(APIFailure.fromException(e));

   }
  }

  @override
  ResultFuture<List<User>> getUsers()async {

    try{
     return Right(await remoteDataSource.getUsers());
    }on APIException catch(e){
      return Left(APIFailure.fromException(e));

    }
  }
  
}