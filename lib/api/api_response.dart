import 'package:json_annotation/json_annotation.dart';

import '../models/models.dart';

part 'api_response.g.dart';

@JsonSerializable(createToJson: false)
class ApiResponse<T> {

  final bool result;

  @JsonKey(fromJson: _dataFromJson)
  final T value;

  final int? code;
  final String? message;

  const ApiResponse({
    required this.result,
    required this.value,
    this.code,
    this.message,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) => _$ApiResponseFromJson<T>(json);

  static T _dataFromJson<T>(Object? json) {
    if (json is Map<String, dynamic>) {
      if (T == UserInfo) {
        return UserInfo.fromJson(json) as T;
      } else if (T == ClassInfo) {
        return ClassInfo.fromJson(json) as T;
      }
      if (T.toString() == "UserInfo?") {
        return UserInfo?.fromJson(json) as T;
      } else if (T.toString() == "ClassInfo?") {
        return ClassInfo?.fromJson(json) as T;
      }
    } else if (json is List) {
      if (T.toString() == "List<UserInfo>") {
        return json.map((e) => UserInfo.fromJson(e as Map<String, dynamic>)).toList() as T;
      } if (T.toString() == "List<ClassInfo>") {
        return json.map((e) => ClassInfo.fromJson(e as Map<String, dynamic>)).toList() as T;
      }
    }
    return json as T;
  }
}