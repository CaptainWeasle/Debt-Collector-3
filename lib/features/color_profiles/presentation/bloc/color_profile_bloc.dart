import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:debt_collector_3/features/color_profiles/domain/entities/color_profile.dart';
import 'package:debt_collector_3/features/color_profiles/domain/usecases/add_color_profile.dart';
import 'package:debt_collector_3/features/color_profiles/domain/usecases/delete_all_color_profiles.dart';
import 'package:debt_collector_3/features/color_profiles/domain/usecases/delete_color_profile.dart';
import 'package:debt_collector_3/features/color_profiles/domain/usecases/get_all_color_profiles.dart';
import 'package:debt_collector_3/features/color_profiles/domain/usecases/update_color_profile.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'color_profile_event.dart';
part 'color_profile_state.dart';

class ColorProfileBloc extends Bloc<ColorProfileEvent, ColorProfileState> {
  final GetAllProfiles getAllProfiles;
  final AddColorProfile addColorProfile;
  final UpdateColorProfile updateColorProfile;
  final DeleteColorProfile deleteColorProfile;
  final DeleteAllColorProfiles deleteAllColorProfiles;

  ColorProfileBloc({
    @required GetAllProfiles all,
    @required AddColorProfile add,
    @required UpdateColorProfile update,
    @required DeleteColorProfile delete,
    @required DeleteAllColorProfiles deleteAll,
  })  : assert(GetAllProfiles != null),
        assert(AddColorProfile != null),
        assert(UpdateColorProfile != null),
        assert(DeleteColorProfile != null),
        assert(DeleteAllColorProfiles != null),
        getAllProfiles = all,
        addColorProfile = add,
        updateColorProfile = update,
        deleteColorProfile = delete,
        deleteAllColorProfiles = deleteAll;

  @override
  ColorProfileState get initialState => ColorProfileState();

  @override
  Stream<ColorProfileState> mapEventToState(
    ColorProfileEvent event,
  ) async* {
    try {
      if (event is GetAllColorProfiles) {
        final profileList = await getAllProfiles();
        yield ColorProfileState(profileList: profileList, state: Loaded());
      }
    } catch (e) {
      print("getAllProfiles bloc error");
    }

    try {
      if (event is AddProfile) {
        await addColorProfile(colorProfile: event.colorProfile);
        final profileList = await getAllProfiles();
        yield ColorProfileState(profileList: profileList, state: Loaded());
      }
    } catch (e) {
      print("addColorProfile bloc error");
    }

    try {
      if (event is UpdateProfile) {
        await updateColorProfile(colorProfile: event.colorProfile);
        final profileList = await getAllProfiles();
        yield ColorProfileState(profileList: profileList, state: Loaded());
      }
    } catch (e) {
      print("updateColorProfile bloc error");
    }

    try {
      if (event is DeleteProfile) {
        await deleteColorProfile(colorProfile: event.colorProfile);
        final profileList = await getAllProfiles();
        yield ColorProfileState(profileList: profileList, state: Loaded());
      }
    } catch (e) {
      print("deleteColorProfile bloc error");
    }

    try {
      await deleteAllColorProfiles();
      final profileList = await getAllProfiles();
      yield ColorProfileState(profileList: profileList, state: Loaded());
    } catch (e) {
      print("deleteAllColorProfile bloc error");
    }
  }
}
