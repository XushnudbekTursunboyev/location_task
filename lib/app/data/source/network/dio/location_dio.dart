import 'package:dio/dio.dart';
import 'package:location_task/app/data/model/request/refresh/refresh_token.dart';
import 'package:location_task/app/data/source/locale/my_preference.dart';
import 'package:location_task/app/data/source/network/api_service.dart';
import 'package:location_task/app/di/di.dart';
import 'package:location_task/app/utils/const/constants.dart';

class Network {
  static Dio getLocationDio() {
    Dio dio = Dio(
      BaseOptions(
        contentType: "application/json",
        baseUrl: "$BASE_URL",
        connectTimeout: const Duration(seconds: 30),
        receiveDataWhenStatusError: true,
        validateStatus: (statusCode) {
          if (statusCode == null) {
            return false;
          }
          if (statusCode == 422) {
            return true;
          }
          if (statusCode >= 200 && statusCode < 300) {
            return true;
          }else{
            return true;
          }

        },
      ),
    );
    dio.options.headers['Authorization'] = 'Bearer ${MyPreference.getAccessToken()}';
    dio.interceptors.add(InterceptorsWrapper(onError: (DioException error, handler) async {
      if (error.response?.statusCode == 401) {
        print('--------');
        await _refreshToken();
        error.requestOptions.headers['Authorization'] =
        'Bearer ${MyPreference.getAccessToken()}';
        return handler.resolve(await _retry(error.requestOptions));
      }
    }));
    return dio;
  }

  static Future<void> _refreshToken() async {
    try{
      final api = getIt<ApiService>();
      final result = await api.refreshToken(RefreshRequest('${MyPreference.getRefreshToken()}'));
      print('sssssssss${result}');
      MyPreference.saveAccessToken(result.access ?? "");
    }catch (e) {
      ///
    }
  }

  static Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    final options =
    Options(method: requestOptions.method, headers: requestOptions.headers);
    return getLocationDio().request<dynamic>(requestOptions.path,
        data: requestOptions.data,
        queryParameters: requestOptions.queryParameters,
        options: options);
  }

}
