// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'touch_class_info_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TouchClassInfoRequest _$TouchClassInfoRequestFromJson(
        Map<String, dynamic> json) =>
    TouchClassInfoRequest(
      userId: json['userId'] as String,
      className: json['className'] as String,
      classTime: json['classTime'] as String,
    );

Map<String, dynamic> _$TouchClassInfoRequestToJson(
        TouchClassInfoRequest instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'className': instance.className,
      'classTime': instance.classTime,
    };
