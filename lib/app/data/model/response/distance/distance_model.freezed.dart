// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'distance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DistanceModel _$DistanceModelFromJson(Map<String, dynamic> json) {
  return _DistanceModel.fromJson(json);
}

/// @nodoc
mixin _$DistanceModel {
  @JsonKey(name: 'message')
  double? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DistanceModelCopyWith<DistanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistanceModelCopyWith<$Res> {
  factory $DistanceModelCopyWith(
          DistanceModel value, $Res Function(DistanceModel) then) =
      _$DistanceModelCopyWithImpl<$Res, DistanceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') double? message,
      @JsonKey(name: 'status') int? status});
}

/// @nodoc
class _$DistanceModelCopyWithImpl<$Res, $Val extends DistanceModel>
    implements $DistanceModelCopyWith<$Res> {
  _$DistanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DistanceModelImplCopyWith<$Res>
    implements $DistanceModelCopyWith<$Res> {
  factory _$$DistanceModelImplCopyWith(
          _$DistanceModelImpl value, $Res Function(_$DistanceModelImpl) then) =
      __$$DistanceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') double? message,
      @JsonKey(name: 'status') int? status});
}

/// @nodoc
class __$$DistanceModelImplCopyWithImpl<$Res>
    extends _$DistanceModelCopyWithImpl<$Res, _$DistanceModelImpl>
    implements _$$DistanceModelImplCopyWith<$Res> {
  __$$DistanceModelImplCopyWithImpl(
      _$DistanceModelImpl _value, $Res Function(_$DistanceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_$DistanceModelImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DistanceModelImpl implements _DistanceModel {
  const _$DistanceModelImpl(@JsonKey(name: 'message') this.message,
      @JsonKey(name: 'status') this.status);

  factory _$DistanceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistanceModelImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final double? message;
  @override
  @JsonKey(name: 'status')
  final int? status;

  @override
  String toString() {
    return 'DistanceModel(message: $message, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistanceModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DistanceModelImplCopyWith<_$DistanceModelImpl> get copyWith =>
      __$$DistanceModelImplCopyWithImpl<_$DistanceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistanceModelImplToJson(
      this,
    );
  }
}

abstract class _DistanceModel implements DistanceModel {
  const factory _DistanceModel(@JsonKey(name: 'message') final double? message,
      @JsonKey(name: 'status') final int? status) = _$DistanceModelImpl;

  factory _DistanceModel.fromJson(Map<String, dynamic> json) =
      _$DistanceModelImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  double? get message;
  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(ignore: true)
  _$$DistanceModelImplCopyWith<_$DistanceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
