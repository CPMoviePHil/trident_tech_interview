// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponse<T> _$ApiResponseFromJson<T>(Map<String, dynamic> json) =>
    ApiResponse<T>(
      result: json['result'] as bool,
      value: ApiResponse._dataFromJson(json['value']),
      code: json['code'] as int?,
      message: json['message'] as String?,
    );
