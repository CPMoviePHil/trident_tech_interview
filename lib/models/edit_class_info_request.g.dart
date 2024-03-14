// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_class_info_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditClassInfoRequest _$EditClassInfoRequestFromJson(
        Map<String, dynamic> json) =>
    EditClassInfoRequest(
      userId: json['userId'] as String,
      classId: json['classId'] as String,
      className: json['className'] as String?,
      classTime: json['classTime'] as String?,
    );

Map<String, dynamic> _$EditClassInfoRequestToJson(
        EditClassInfoRequest instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'classId': instance.classId,
      'className': instance.className,
      'classTime': instance.classTime,
    };
