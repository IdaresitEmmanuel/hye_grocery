// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc/auth_bloc.dart' as _i16;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i13;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i14;
import 'application/product/product_bloc.dart' as _i12;
import 'application/user/user_bloc.dart' as _i15;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/product/i_product_facade.dart' as _i8;
import 'domain/user/i_user_facade.dart' as _i10;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'infrastructure/core/firebase_injectable_module.dart' as _i17;
import 'infrastructure/product/product_facade.dart' as _i9;
import 'infrastructure/user/user_facade.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i6.IAuthFacade>(() =>
      _i7.FirebaseAuthFacade(get<_i3.FirebaseAuth>(), get<_i5.GoogleSignIn>()));
  gh.factory<_i8.IProductFacade>(
      () => _i9.ProductFacade(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i10.IUserFacade>(() =>
      _i11.UserFacade(get<_i3.FirebaseAuth>(), get<_i4.FirebaseFirestore>()));
  gh.factory<_i12.ProductBloc>(
      () => _i12.ProductBloc(get<_i8.IProductFacade>()));
  gh.factory<_i13.SignInFormBloc>(
      () => _i13.SignInFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i14.SignUpFormBloc>(
      () => _i14.SignUpFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i15.UserBloc>(() => _i15.UserBloc(get<_i10.IUserFacade>()));
  gh.factory<_i16.AuthBloc>(() => _i16.AuthBloc(get<_i6.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i17.FirebaseInjectableModule {}
