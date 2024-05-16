import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location_task/app/data/model/request/location/location_request.dart';
import 'package:location_task/app/data/source/locale/my_preference.dart';
import 'package:location_task/app/presentation/screens/main/bloc/main_bloc.dart';
import 'package:location_task/app/utils/action_utils.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final mapControllerCompleter = Completer<YandexMapController>();
  final bloc = MainBloc();

  double lat = 54;
  double long = 34;


  Future<void> _moveToCurrentLocation(double lat, double lon) async {
    (await mapControllerCompleter.future).moveCamera(
      animation: const MapAnimation(type: MapAnimationType.linear, duration: 1),
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: Point(
            latitude: lat,
            longitude: lon,
          ),
          zoom: 15,
        ),
      ),
    );
  }


  @override
  void initState() {
    bloc.add(GetLocationEvent());
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocConsumer<MainBloc, MainState>(
        listener: (context, state) {
          if(state is MainLoadingState) {
            startLoading(context);
          }

          if(state is MainErrorState) {
            stopLoading(context);
            showError('${state.message}', context);
          }

          if(state is MainSuccessState) {
            if(state.long != null) {
              lat = state.lat ?? 54;
              long = state.long ?? 34;
              _moveToCurrentLocation(state.lat ?? 54.465789, state.long ?? 45.46548);
            }else{
              stopLoading(context);
              showSuccessDialog(context, state.distanceModel?.message ?? 0);
            }
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: Stack(
              children: [
                YandexMap(
                  onMapCreated: (controller) {
                    mapControllerCompleter.complete(controller);
                  },
                  onMapTap: (point) async {
                    // bloc.add(PointObjectEvent(point.latitude, point.longitude));
                  },
                  logoAlignment: MapAlignment(
                      horizontal: HorizontalAlignment.left,
                      vertical: VerticalAlignment.top),
                  zoomGesturesEnabled: true,
                  mapObjects: [
                    PlacemarkMapObject(
                      mapId: const MapObjectId('155'),
                      icon: PlacemarkIcon.single(PlacemarkIconStyle(
                        scale: 3,
                        isFlat: true,
                        image: BitmapDescriptor.fromAssetImage(
                            'assets/icons/maps_icon.png'),
                      )),
                      point: Point(
                          latitude: lat,
                          longitude: long
                      ),)
                  ],
                ),

                Positioned(
                    bottom: 32,
                    left: 16,
                    right: 16,
                    child: ElevatedButton(
                      onPressed: () {
                        print('$lat');
                        print('$long');
                        bloc.add(SendMyLocationEvent(LocationRequest(lat, long)));
                      },
                      child: Text('Masofa'),
                    ))
              ],
            ),
          );
        },
      ),
    );
  }
}
