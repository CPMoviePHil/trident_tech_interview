// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) => UserInfo(
      userId: json['userId'] as String,
      account: json['account'] as String,
      createdAt: json['createdAt'] as String,
      userType: json['userType'] as int,
      updatedAt: json['updatedAt'] as String?,
      userName: json['userName'] as String?,
      userAvatar: json['userAvatar'] as String?,
    );

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
      'userId': instance.userId,
      'account': instance.account,
      'createdAt': instance.createdAt,
      'userType': instance.userType,
      'updatedAt': instance.updatedAt,
      'userName': instance.userName,
      'userAvatar': instance.userAvatar,
    };
