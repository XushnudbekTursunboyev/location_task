part of 'main_bloc.dart';

@immutable
sealed class MainState {}

class MainLoadingState extends MainState {}

class MainErrorState extends MainState {
  final String message;

  MainErrorState(this.message);
}

class MainSuccessState extends MainState {
  final DistanceModel? distanceModel;
  final double? lat;
  final double? long;

  MainSuccessState({this.distanceModel, this.lat, this.long});
}

final class MainInitial extends MainState {}
