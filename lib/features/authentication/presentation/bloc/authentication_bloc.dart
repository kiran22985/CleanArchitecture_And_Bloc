import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/usecases/create_user.dart';
import '../../domain/usecases/get_users.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  final CreateUser createUser;
  final GetUsers getUsers;
  AuthenticationBloc({required this.getUsers, required this.createUser}):super(AuthenticationInitial()){
    on<CreateUsersEvent>(_createUser);
    on<GetUsersEvent>(_getUsers);
  }

  Future<void> _createUser(
      CreateUsersEvent event,
      Emitter<AuthenticationState> emit,
      )async{

  }

  Future<void> _getUsers(){
    
  }






}
