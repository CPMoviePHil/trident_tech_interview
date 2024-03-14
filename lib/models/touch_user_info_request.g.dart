// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'touch_user_info_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TouchUserInfoRequest _$TouchUserInfoRequestFromJson(
        Map<String, dynamic> json) =>
    TouchUserInfoRequest(
      account: json['account'] as String,
      userType: json['userType'] as int,
      userName: json['userName'] as String?,
    );

Map<String, dynamic> _$TouchUserInfoRequestToJson(
        TouchUserInfoRequest instance) =>
    <String, dynamic>{
      'account': instance.account,
      'userName': instance.userName,
      'userType': instance.userType,
    };
