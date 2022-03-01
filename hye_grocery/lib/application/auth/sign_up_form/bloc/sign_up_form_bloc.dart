import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:hye_grocery/domain/auth/auth_failure.dart';
import 'package:hye_grocery/domain/auth/i_auth_facade.dart';
import 'package:hye_grocery/domain/auth/value_field_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_form_event.dart';
part 'sign_up_form_state.dart';

part 'sign_up_form_bloc.freezed.dart';

@injectable
class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  final IAuthFacade iAuthFacade;
  SignUpFormBloc(this.iAuthFacade) : super(SignUpFormState.initial());

  @override
  Stream<SignUpFormState> mapEventToState(SignUpFormEvent event) async* {
    yield* event.map(emailChanged: (event) async* {
      yield state.copyWith(
          emailAddress: EmailAddress(event.value),
          authFailureOrSuccess: none());
    }, passwordChanged: (event) async* {
      yield state.copyWith(
          password: Password(event.value), authFailureOrSuccess: none());
    }, confirmPasswordChanged: (event) async* {
      yield state.copyWith(
          confirmPassword: Password(event.value), authFailureOrSuccess: none());
    }, phoneNumberChanged: (event) async* {
      yield state.copyWith(
          phoneNumber: PhoneNumber(event.value), authFailureOrSuccess: none());
    }, registerUserPressed: (event) async* {
      print("register user got pressed");
      // if (!state.passwordMismatch) {
      final result = await iAuthFacade.signUpUser(
          displayName: state.displayName,
          emailAddress: state.emailAddress,
          password: state.password);
      yield result.fold(
        (l) => state.copyWith(authFailureOrSuccess: some(left(l))),
        (r) => state.copyWith(authFailureOrSuccess: none()),
      );
      // }
      // yield state.copyWith(passwordMismatch: true);
      // yield state.copyWith(passwordMismatch: false);
    });
  }
}
