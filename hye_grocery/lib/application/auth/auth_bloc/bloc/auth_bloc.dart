import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hye_grocery/domain/auth/i_auth_facade.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade iAuthFacade;
  AuthBloc(this.iAuthFacade) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) {
      event.map(requestAuthStatus: (e) async {
        final result = await iAuthFacade.getSignedInUser();
        result.fold(() => emit(const AuthState.unauthenticated()),
            (_) => emit(const AuthState.authenticated()));
      }, signOut: (e) async {
        await iAuthFacade.signOut();
        emit(const AuthState.unauthenticated());
      });
    });
  }
}
