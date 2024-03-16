// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserListRequest _$UserListRequestFromJson(Map<String, dynamic> json) =>
    UserListRequest(
      userTypes:
          (json['userTypes'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$UserListRequestToJson(UserListRequest instance) =>
    <String, dynamic>{
      'userTypes': instance.userTypes,
    };
