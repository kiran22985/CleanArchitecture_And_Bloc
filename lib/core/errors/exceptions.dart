import 'package:equatable/equatable.dart';

class ServerException extends Equatable implements Exception{

  final String message;
  final int statusCode;


  const ServerException({required this.statusCode, required this.message});
  @override
  // TODO: implement props
  List<Object?> get props => [message, statusCode];

}


class APIException extends Equatable implements Exception{

  final String message;
  final int statusCode;


  const APIException({required this.statusCode, required this.message});
  @override
  // TODO: implement props
  List<Object?> get props => [message, statusCode];

}
