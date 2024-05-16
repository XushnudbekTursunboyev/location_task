

import 'package:dio/dio.dart';
import 'package:location_task/app/data/model/request/location/location_request.dart';
import 'package:location_task/app/data/model/request/refresh/refresh_token.dart';
import 'package:location_task/app/data/model/request/user/user_request.dart';
import 'package:location_task/app/data/model/response/distance/distance_model.dart';
import 'package:location_task/app/data/model/response/refresh/refresh_response.dart';
import 'package:location_task/app/data/model/response/token/token_response.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST('get_distance/')
  Future<DistanceModel> getDistance(@Header("Authorization") String token, @Body() LocationRequest locationRequest);

  @POST('token/')
  Future<TokenResponse> getToken(@Body() UserRequest userRequest) ;

  @POST('refresh_token/')
  Future<RefreshResponse> refreshToken(@Body() RefreshRequest refreshRequest) ;
}