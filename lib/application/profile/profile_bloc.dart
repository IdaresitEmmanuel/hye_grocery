import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hye_grocery/domain/auth/value_field_objects.dart';
import 'package:hye_grocery/domain/profile/i_profile_facade.dart';
import 'package:hye_grocery/domain/profile/profile_failure.dart';
import 'package:injectable/injectable.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IProfileFacade iProfileFacade;
  ProfileBloc(this.iProfileFacade) : super(ProfileState.initial());

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    yield* event.map(resetState: (event) async* {
      yield ProfileState.initial();
    }, setEditUsername: (event) async* {
      yield state.copyWith(editUsername: UserName(event.value));
    }, setEditPhonenumber: (event) async* {
      yield state.copyWith(editPhonenumber: PhoneNumber(event.value));
    }, updateProfileImage: (event) async* {
      yield state.copyWith(isImageLoading: true);
      final result = await iProfileFacade.updateProfileImage(
          fileName: event.fileName, file: event.file);
      yield result.fold(
        (l) => state.copyWith(imageEditFailureOrSuccess: some(left(l))),
        (r) => state.copyWith(imageEditFailureOrSuccess: some(right(r))),
      );
      yield state.copyWith(
          isImageLoading: false, imageEditFailureOrSuccess: none());
    }, updateUserProfile: (event) async* {
      yield state.copyWith(
          showEditErrorMessage: true,
          isEditing: true,
          editFailureOrSuccess: none());
      final result = await iProfileFacade.updateUserProfile(
          userName: state.editUsername, phoneNumber: state.editPhonenumber);
      yield result.fold(
          (l) => state.copyWith(editFailureOrSuccess: some(left(l))),
          (r) => state.copyWith(editFailureOrSuccess: some(right(r))));
      yield state.copyWith(isEditing: false, editFailureOrSuccess: none());
    }, deleteProfileImage: (event) async* {
      yield state.copyWith(isImageLoading: true);
      final result = await iProfileFacade.deleteProfileImage(
          imageStorageLocation: event.imageStorageLocation);
      yield result.fold(
          (l) => state.copyWith(imageDeleteFailureOrSuccess: some(left(l))),
          (r) => state.copyWith(imageDeleteFailureOrSuccess: some(right(r))));
      yield state.copyWith(
          isImageLoading: false, imageDeleteFailureOrSuccess: none());
    });
  }
}
