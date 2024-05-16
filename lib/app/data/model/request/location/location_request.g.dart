// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationRequestImpl _$$LocationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationRequestImpl(
      (json['latitude'] as num?)?.toDouble(),
      (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$LocationRequestImplToJson(
        _$LocationRequestImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
