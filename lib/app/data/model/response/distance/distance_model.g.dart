// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'distance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DistanceModelImpl _$$DistanceModelImplFromJson(Map<String, dynamic> json) =>
    _$DistanceModelImpl(
      (json['message'] as num?)?.toDouble(),
      (json['status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DistanceModelImplToJson(_$DistanceModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
    };
