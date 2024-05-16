

import 'package:location_task/app/data/model/request/location/location_request.dart';
import 'package:location_task/app/data/model/request/user/user_request.dart';
import 'package:location_task/app/data/model/response/distance/distance_model.dart';
import 'package:location_task/app/data/model/response/token/token_response.dart';

abstract class AppRepository{
  Future<DistanceModel> getDistance(LocationRequest locationRequest);
  Future<TokenResponse> getToken(UserRequest userRequest);
}