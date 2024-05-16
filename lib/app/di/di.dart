import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:location_task/app/data/source/network/dio/location_dio.dart';
import 'package:location_task/app/utils/const/constants.dart';
import '../data/repository/app_repository.dart';
import '../data/repository/impl/app_repository_impl.dart';
import '../data/source/network/api_service.dart';

final getIt = GetIt.instance;

final dio = Dio(BaseOptions(
  baseUrl: '$BASE_URL',
  receiveDataWhenStatusError: true,
  contentType: 'application/json',

));

void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Network.getLocationDio()));
  getIt.registerSingleton<AppRepository>(AppRepositoryImpl());
}
