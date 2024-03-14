import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'class_info.g.dart';

@JsonSerializable()
class ClassInfo extends Equatable {

  const ClassInfo({
    required this.classId,
    required this.className,
    required this.classTime,
    required this.createdAt,
    this.updatedAt,
  });

  factory ClassInfo.fromJson(Map<String, dynamic> json) => _$ClassInfoFromJson(json);

  final String classId;
  final String className;
  final String classTime;
  final String createdAt;
  final String? updatedAt;

  Map<String, dynamic> toJson() => _$ClassInfoToJson(this);

  @override
  List<Object?> get props => [classId, className, classTime, createdAt, updatedAt];
}