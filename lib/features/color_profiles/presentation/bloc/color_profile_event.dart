part of 'color_profile_bloc.dart';

abstract class ColorProfileEvent {
  const ColorProfileEvent();
}

class GetAllColorProfiles extends ColorProfileEvent {}

class AddProfile extends ColorProfileEvent {
  final ColorProfile colorProfile;

  AddProfile({this.colorProfile});
}

class UpdateProfile extends ColorProfileEvent {
  final ColorProfile colorProfile;

  UpdateProfile({this.colorProfile});
}

class DeleteProfile extends ColorProfileEvent {
  final ColorProfile colorProfile;

  DeleteProfile({this.colorProfile});
}

class DeleteAllProfiles extends ColorProfileEvent {}
