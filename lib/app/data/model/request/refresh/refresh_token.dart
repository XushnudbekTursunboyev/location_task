import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_token.g.dart';

part 'refresh_token.freezed.dart';


@freezed
class RefreshRequest with _$RefreshRequest {
  const factory RefreshRequest(
      String? refresh
      ) = _RefreshRequest;

  factory RefreshRequest.fromJson(Map<String, dynamic> json) =>
      _$RefreshRequestFromJson(json);
}