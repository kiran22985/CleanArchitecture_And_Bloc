part of 'authentication_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}


class CreateUsersEvent extends AuthenticationEvent{

  final String createdAt;
  final String name;
  final String avatar;

  const CreateUsersEvent({required this.createdAt, required this.avatar, required this.name});

  @override
  // TODO: implement props
  List<Object?> get props => [createdAt, name, avatar];

}


class GetUsersEvent extends AuthenticationEvent{
  const GetUsersEvent();
}

