
import 'package:location_task/app/data/model/request/location/location_request.dart';
import 'package:location_task/app/data/model/request/user/user_request.dart';
import 'package:location_task/app/data/model/response/distance/distance_model.dart';
import 'package:location_task/app/data/model/response/token/token_response.dart';
import 'package:location_task/app/data/repository/app_repository.dart';
import 'package:location_task/app/data/source/locale/my_preference.dart';
import 'package:location_task/app/data/source/network/api_service.dart';
import 'package:location_task/app/di/di.dart';

class AppRepositoryImpl implements AppRepository {
  final api = getIt<ApiService>();

  @override
  Future<DistanceModel> getDistance(LocationRequest locationRequest) async{
      final result = await api.getDistance("Bearer ${MyPreference.getAccessToken()}", locationRequest);
      print('+repository : ${result}');
      return result;
  }

  @override
  Future<TokenResponse> getToken(UserRequest userRequest) async{
    final result = await api.getToken(userRequest);
    
    MyPreference.saveAccessToken(result.access ?? "");
    MyPreference.saveRefreshToken(result.refresh ?? "");
    return result;
  }

}