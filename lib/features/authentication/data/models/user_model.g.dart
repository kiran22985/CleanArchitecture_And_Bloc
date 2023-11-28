// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModels _$UserModelsFromJson(Map<String, dynamic> json) => UserModels(
      id: json['id'] as int,
      avatar: json['avatar'] as String,
      createdAt: json['createdAt'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$UserModelsToJson(UserModels instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'name': instance.name,
      'avatar': instance.avatar,
    };
