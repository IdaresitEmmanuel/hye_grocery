import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hye_grocery/domain/auth/auth_failure.dart';
import 'package:hye_grocery/domain/auth/i_auth_facade.dart';
import 'package:hye_grocery/domain/auth/value_field_objects.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade iAuthFacade;

  SignInFormBloc(this.iAuthFacade) : super(SignInFormState.initial()) {
    on<SignInFormEvent>((event, emit) {
      event.map(
          emailChanged: (event) {
            emit(state.copyWith(
                emailAddress: EmailAddress(event.value),
                authFailureOrSuccess: none()));
          },
          passwordChanged: (event) {
            emit(state.copyWith(
                password: Password(event.value), authFailureOrSuccess: none()));
          },
          signInWithEmailAndPasswordPressed: (event) async {
            final result = await iAuthFacade.signInUser(
                emailAddress: state.emailAddress, password: state.password);
            result.fold(
              (l) => emit(state.copyWith(authFailureOrSuccess: some(left(l)))),
              (r) => emit(state.copyWith(authFailureOrSuccess: none())),
            );
          },
          registerWithEmailAndPasswordPressed: (event) async {
            final result = await iAuthFacade.signUpUser(
                emailAddress: state.emailAddress, password: state.password);
            result.fold(
              (l) => emit(state.copyWith(authFailureOrSuccess: some(left(l)))),
              (r) => emit(state.copyWith(authFailureOrSuccess: none())),
            );
          },
          signInWithGooglePressed: (event) async {
            final result = await iAuthFacade.signInWithGoogle();
            result.fold(
              (l) => emit(state.copyWith(authFailureOrSuccess: some(left(l)))),
              (r) => emit(state.copyWith(authFailureOrSuccess: none())),
            );
          },
          signInWithFacebookPressed: (event) async {},
          forgotPasswordPressed: (event) async {},
          goToSignUpPagePressed: (event) async {});
    });
  }
}
