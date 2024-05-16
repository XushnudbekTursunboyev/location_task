// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationRequest _$LocationRequestFromJson(Map<String, dynamic> json) {
  return _LocationRequest.fromJson(json);
}

/// @nodoc
mixin _$LocationRequest {
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationRequestCopyWith<LocationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationRequestCopyWith<$Res> {
  factory $LocationRequestCopyWith(
          LocationRequest value, $Res Function(LocationRequest) then) =
      _$LocationRequestCopyWithImpl<$Res, LocationRequest>;
  @useResult
  $Res call({double? latitude, double? longitude});
}

/// @nodoc
class _$LocationRequestCopyWithImpl<$Res, $Val extends LocationRequest>
    implements $LocationRequestCopyWith<$Res> {
  _$LocationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationRequestImplCopyWith<$Res>
    implements $LocationRequestCopyWith<$Res> {
  factory _$$LocationRequestImplCopyWith(_$LocationRequestImpl value,
          $Res Function(_$LocationRequestImpl) then) =
      __$$LocationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? latitude, double? longitude});
}

/// @nodoc
class __$$LocationRequestImplCopyWithImpl<$Res>
    extends _$LocationRequestCopyWithImpl<$Res, _$LocationRequestImpl>
    implements _$$LocationRequestImplCopyWith<$Res> {
  __$$LocationRequestImplCopyWithImpl(
      _$LocationRequestImpl _value, $Res Function(_$LocationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$LocationRequestImpl(
      freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationRequestImpl implements _LocationRequest {
  const _$LocationRequestImpl(this.latitude, this.longitude);

  factory _$LocationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationRequestImplFromJson(json);

  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'LocationRequest(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationRequestImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationRequestImplCopyWith<_$LocationRequestImpl> get copyWith =>
      __$$LocationRequestImplCopyWithImpl<_$LocationRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationRequestImplToJson(
      this,
    );
  }
}

abstract class _LocationRequest implements LocationRequest {
  const factory _LocationRequest(
      final double? latitude, final double? longitude) = _$LocationRequestImpl;

  factory _LocationRequest.fromJson(Map<String, dynamic> json) =
      _$LocationRequestImpl.fromJson;

  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$LocationRequestImplCopyWith<_$LocationRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
