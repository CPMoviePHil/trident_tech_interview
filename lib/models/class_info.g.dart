// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassInfo _$ClassInfoFromJson(Map<String, dynamic> json) => ClassInfo(
      classId: json['classId'] as String,
      className: json['className'] as String,
      classTime: json['classTime'] as String,
      createdAt: json['createdAt'] as String,
      desc: json['desc'] as String,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$ClassInfoToJson(ClassInfo instance) => <String, dynamic>{
      'classId': instance.classId,
      'className': instance.className,
      'classTime': instance.classTime,
      'createdAt': instance.createdAt,
      'desc': instance.desc,
      'updatedAt': instance.updatedAt,
    };
