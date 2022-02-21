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
      emit(state.copyWith());
      emit(event.map(emailChanged: (e) {
        return state.copyWith(
            emailAddress: EmailAddress(e.value), authFailureOrSuccess: none());
      }, passwordChanged: (e) {
        return state.copyWith(
            password: Password(e.value), authFailureOrSuccess: none());
      }, signInWithEmailAndPasswordPressed: (e) {
        return state.copyWith();
      }, signInWithGooglePressed: (e) {
        return state.copyWith();
      }, signInWithFacebookPressed: (e) {
        return state.copyWith();
      }, forgotPasswordPressed: (e) {
        return state.copyWith();
      }, goToSignUpPagePressed: (e) {
        return state.copyWith();
      }));
    });
  }
}
