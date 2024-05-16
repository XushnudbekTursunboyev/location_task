import 'package:bloc/bloc.dart';
import 'package:location_task/app/data/model/request/location/location_request.dart';
import 'package:location_task/app/data/model/request/user/user_request.dart';
import 'package:location_task/app/data/model/response/distance/distance_model.dart';
import 'package:location_task/app/data/repository/app_repository.dart';
import 'package:location_task/app/di/di.dart';
import 'package:location_task/app/utils/location/location_service.dart';
import 'package:meta/meta.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final repository = getIt<AppRepository>();
  final LocationService locationService =  LocationService();

  MainBloc() : super(MainInitial()) {
    on<SendMyLocationEvent>((event, emit) async {
      try {
        emit(MainLoadingState());
        final response1 = await repository.getToken(UserRequest('tester', 'tester1'));
        final response = await repository.getDistance(event.locationRequest);
        print('response: ${response}');
        emit(MainSuccessState(distanceModel: response));
      } catch (e) {
        print('--------${e}');
        emit(MainErrorState(e.toString()));
      }
    });


    on<GetLocationEvent>((event, emit) async {
      if (!await locationService.checkPermission()) {
        await locationService.requestPermission();
        final getLocation = await locationService.getCurrentLocation();
        emit(MainSuccessState(lat: getLocation.lat, long: getLocation.long));
      } else {
        final getLocation = await locationService.getCurrentLocation();
        emit(MainSuccessState(lat: getLocation.lat, long: getLocation.long));
      }
    });
  }
}
