import 'package:equatable/equatable.dart';

class User extends Equatable{



  @override
  List<Object> get props =>[id, createdAt,name,avatar];

  final int id;
  final String createdAt;
  final String name;
  final String avatar;


  const User({required this.id, required this.name, required this.createdAt, required this.avatar});


}