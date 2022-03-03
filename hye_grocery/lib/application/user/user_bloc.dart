import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hye_grocery/domain/auth/user.dart';
import 'package:hye_grocery/domain/auth/value_field_objects.dart';
import 'package:hye_grocery/domain/user/i_user_facade.dart';
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
      yield result.fold((f) => state.copyWith(),
          (user) => state.copyWith(signedInUser: user));
    }, deleteUser: (event) async* {
      final result = await iUserFacade.deleteUser();
      yield result.fold(
          (l) => state.copyWith(), (r) => state.copyWith(signedInUser: null));
    });
  }
}
