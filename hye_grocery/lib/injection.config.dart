// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc/auth_bloc.dart' as _i20;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i17;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i18;
import 'application/product/product_bloc.dart' as _i15;
import 'application/profile/profile_bloc.dart' as _i16;
import 'application/user/user_bloc.dart' as _i19;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'domain/product/i_product_facade.dart' as _i9;
import 'domain/profile/i_profile_facade.dart' as _i11;
import 'domain/user/i_user_facade.dart' as _i13;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i8;
import 'infrastructure/core/firebase_injectable_module.dart' as _i21;
import 'infrastructure/product/product_facade.dart' as _i10;
import 'infrastructure/profile/profile_facade.dart' as _i12;
import 'infrastructure/user/user_facade.dart'
    as _i14; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i5.FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i7.IAuthFacade>(() =>
      _i8.FirebaseAuthFacade(get<_i3.FirebaseAuth>(), get<_i6.GoogleSignIn>()));
  gh.factory<_i9.IProductFacade>(
      () => _i10.ProductFacade(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i11.IProfileFacade>(() => _i12.ProfileFacade(
      get<_i3.FirebaseAuth>(),
      get<_i4.FirebaseFirestore>(),
      get<_i5.FirebaseStorage>()));
  gh.lazySingleton<_i13.IUserFacade>(() =>
      _i14.UserFacade(get<_i3.FirebaseAuth>(), get<_i4.FirebaseFirestore>()));
  gh.factory<_i15.ProductBloc>(
      () => _i15.ProductBloc(get<_i9.IProductFacade>()));
  gh.factory<_i16.ProfileBloc>(
      () => _i16.ProfileBloc(get<_i11.IProfileFacade>()));
  gh.factory<_i17.SignInFormBloc>(
      () => _i17.SignInFormBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i18.SignUpFormBloc>(
      () => _i18.SignUpFormBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i19.UserBloc>(() => _i19.UserBloc(get<_i13.IUserFacade>()));
  gh.factory<_i20.AuthBloc>(() => _i20.AuthBloc(get<_i7.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i21.FirebaseInjectableModule {}
