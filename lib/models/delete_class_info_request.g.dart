// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_class_info_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteClassInfoRequest _$DeleteClassInfoRequestFromJson(
        Map<String, dynamic> json) =>
    DeleteClassInfoRequest(
      userId: json['userId'] as String,
      classId: json['classId'] as String,
    );

Map<String, dynamic> _$DeleteClassInfoRequestToJson(
        DeleteClassInfoRequest instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'classId': instance.classId,
    };
