import 'package:json_annotation/json_annotation.dart';
import 'package:tdd_tutorial/features/authentication/domain/entities/user.dart';

part 'user_model.g.dart';
@JsonSerializable()
class UserModels extends User{


  const UserModels({required super.id, required super.avatar, required super.createdAt, required super.name});

  factory UserModels.fromJson(Map<String, dynamic> json)=> _$UserModelsFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelsToJson(this);

  @override
  List<Object> get props =>[id, avatar, name, createdAt];

}