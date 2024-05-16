part of 'main_bloc.dart';

@immutable
sealed class MainEvent {}

class SendMyLocationEvent extends MainEvent{
  final LocationRequest locationRequest;

  SendMyLocationEvent(this.locationRequest);
}

class GetLocationEvent extends MainEvent {

}