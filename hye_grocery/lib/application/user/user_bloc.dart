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
      final result = await iUserFacade.createOrUpdateUser(
          userName: event.username, phoneNumber: event.phoneNumber);
      yield result.fold(
          (l) =>
              state.copyWith(user: null, userFailureOrSuccess: some(left(l))),
          (r) =>
              state.copyWith(user: r, userFailureOrSuccess: some(right(unit))));
    }, deleteUser: (event) async* {
      final result = await iUserFacade.deleteUser();
      yield result.fold((l) => state.copyWith(),
          (r) => state.copyWith(userFailureOrSuccess: none()));
    }, getCurrentUser: (value) async* {
      yield state.copyWith(isLoading: true);
      final result = await iUserFacade.getUser();
      yield result.fold(
          (l) => state.copyWith(
              user: null,
              isLoading: false,
              userFailureOrSuccess: some(left(l))),
          (r) => state.copyWith(
              user: r,
              isLoading: false,
              userFailureOrSuccess: some(right(unit))));
    });
  }
}
