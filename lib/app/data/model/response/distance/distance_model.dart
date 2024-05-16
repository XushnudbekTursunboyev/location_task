import 'package:freezed_annotation/freezed_annotation.dart';

part 'distance_model.freezed.dart';
part 'distance_model.g.dart';

@freezed
class DistanceModel with _$DistanceModel {
  const factory DistanceModel(
      @JsonKey(name: 'message') double? message,
      @JsonKey(name: 'status') int? status,
      ) = _DistanceModel;

  factory DistanceModel.fromJson(Map<String, dynamic> json) =>
      _$DistanceModelFromJson(json);
}