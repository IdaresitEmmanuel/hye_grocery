import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hye_grocery/domain/auth/user.dart';
import 'package:hye_grocery/domain/auth/value_field_objects.dart';
import 'package:hye_grocery/domain/user/i_user_facade.dart';
import 'package:hye_grocery/domain/user/user_failure.dart';
import 'package:injectable/injectable.dart';

part 'user_event.dart';
part 'user_state.dart';

part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final IUserFacade iUserFacade;
  UserBloc(this.iUserFacade) : super(UserState.initial());

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    yield* event.map(createOrUpdateUser: (event) async* {
      yield state.copyWith(showEditErrorMessage: true);
      final result = await iUserFacade.createOrUpdateUser(
          userName: event.username, phoneNumber: event.phoneNumber);
      yield result.fold(
          (l) =>
              state.copyWith(user: null, userFailureOrSuccess: some(left(l))),
          (r) =>
              state.copyWith(user: r, userFailureOrSuccess: some(right(unit))));
      log("This is to check if the run stack reaches here");
      // it doesn't reach once there is a crash!!!
    }, deleteUser: (event) async* {
      final result = await iUserFacade.deleteUser();
      yield result.fold((l) => state.copyWith(),
          (r) => state.copyWith(userFailureOrSuccess: none()));
    }, getCurrentUser: (value) async* {
      yield state.copyWith(isLoading: true, isImageLoading: true);
      final result = await iUserFacade.getUser();
      yield result.fold(
          (l) => state.copyWith(
              user: null,
              isLoading: false,
              isImageLoading: false,
              userFailureOrSuccess: some(left(l))),
          (r) => state.copyWith(
              user: r,
              isLoading: false,
              isImageLoading: false,
              userFailureOrSuccess: some(right(unit))));
    }, deleteProfileImage: (event) async* {
      yield state.copyWith(isImageLoading: true);
      final result = await iUserFacade.deleteProfileImage(
          imageStorageLocation: event.imageStorageLocation);
      result.fold((l) => state.copyWith(isImageLoading: false),
          (r) => state.copyWith(isImageLoading: false));
      add(const UserEvent.getCurrentUser());
    }, updateProfileImage: (event) async* {
      yield state.copyWith(isImageLoading: true);
      final result = await iUserFacade.updateProfileImage(
          fileName: event.fileName, file: event.file);
      yield result.fold((l) => state.copyWith(isImageLoading: false),
          (r) => state.copyWith());
      add(const UserEvent.getCurrentUser());
    }, setEditPhonenumber: (event) async* {
      yield state.copyWith(editPhonenumber: PhoneNumber(event.value));
    }, setEditUsername: (event) async* {
      yield state.copyWith(editUsername: UserName(event.value));
    }, refreshEdit: (edit) async* {
      yield state.copyWith(showEditErrorMessage: false);
    });
  }
}
