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

import 'application/auth/auth_bloc/auth_bloc.dart' as _i22;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i19;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i20;
import 'application/cart/cart_bloc.dart' as _i23;
import 'application/product/product_bloc.dart' as _i17;
import 'application/profile/profile_bloc.dart' as _i18;
import 'application/user/user_bloc.dart' as _i21;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'domain/cart/i_cart_facade.dart' as _i9;
import 'domain/product/i_product_facade.dart' as _i11;
import 'domain/profile/i_profile_facade.dart' as _i13;
import 'domain/user/i_user_facade.dart' as _i15;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i8;
import 'infrastructure/cart/cart_facade.dart' as _i10;
import 'infrastructure/core/firebase_injectable_module.dart' as _i24;
import 'infrastructure/product/product_facade.dart' as _i12;
import 'infrastructure/profile/profile_facade.dart' as _i14;
import 'infrastructure/user/user_facade.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i9.ICartFacade>(
      () => _i10.CartFacade(get<_i4.FirebaseFirestore>()));
  gh.factory<_i11.IProductFacade>(
      () => _i12.ProductFacade(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i13.IProfileFacade>(() => _i14.ProfileFacade(
      get<_i3.FirebaseAuth>(),
      get<_i4.FirebaseFirestore>(),
      get<_i5.FirebaseStorage>()));
  gh.lazySingleton<_i15.IUserFacade>(() =>
      _i16.UserFacade(get<_i3.FirebaseAuth>(), get<_i4.FirebaseFirestore>()));
  gh.factory<_i17.ProductBloc>(
      () => _i17.ProductBloc(get<_i11.IProductFacade>()));
  gh.factory<_i18.ProfileBloc>(
      () => _i18.ProfileBloc(get<_i13.IProfileFacade>()));
  gh.factory<_i19.SignInFormBloc>(
      () => _i19.SignInFormBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i20.SignUpFormBloc>(
      () => _i20.SignUpFormBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i21.UserBloc>(() => _i21.UserBloc(get<_i15.IUserFacade>()));
  gh.factory<_i22.AuthBloc>(() => _i22.AuthBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i23.CartBloc>(() => _i23.CartBloc(get<_i9.ICartFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i24.FirebaseInjectableModule {}
