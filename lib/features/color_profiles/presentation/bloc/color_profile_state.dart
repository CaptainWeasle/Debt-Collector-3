part of 'color_profile_bloc.dart';

class ColorProfileState {
  MiniState state;
  List<ColorProfile> profileList = List<ColorProfile>();

  ColorProfileState._();
  ColorProfileState({this.profileList, this.state});

  factory ColorProfileState.initial() {
    return ColorProfileState._()..state = Empty();
  }
}

abstract class MiniState {}

class Empty extends MiniState {}

class Loading extends MiniState {}

class Loaded extends MiniState {}
