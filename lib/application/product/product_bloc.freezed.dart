// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductEventTearOff {
  const _$ProductEventTearOff();

  RequestProduct requestProduct() {
    return const RequestProduct();
  }
}

/// @nodoc
const $ProductEvent = _$ProductEventTearOff();

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestProduct value) requestProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestProduct value)? requestProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestProduct value)? requestProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res> implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  final ProductEvent _value;
  // ignore: unused_field
  final $Res Function(ProductEvent) _then;
}

/// @nodoc
abstract class $RequestProductCopyWith<$Res> {
  factory $RequestProductCopyWith(
          RequestProduct value, $Res Function(RequestProduct) then) =
      _$RequestProductCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestProductCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements $RequestProductCopyWith<$Res> {
  _$RequestProductCopyWithImpl(
      RequestProduct _value, $Res Function(RequestProduct) _then)
      : super(_value, (v) => _then(v as RequestProduct));

  @override
  RequestProduct get _value => super._value as RequestProduct;
}

/// @nodoc

class _$RequestProduct implements RequestProduct {
  const _$RequestProduct();

  @override
  String toString() {
    return 'ProductEvent.requestProduct()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RequestProduct);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestProduct,
  }) {
    return requestProduct();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestProduct,
  }) {
    return requestProduct?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestProduct,
    required TResult orElse(),
  }) {
    if (requestProduct != null) {
      return requestProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestProduct value) requestProduct,
  }) {
    return requestProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestProduct value)? requestProduct,
  }) {
    return requestProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestProduct value)? requestProduct,
    required TResult orElse(),
  }) {
    if (requestProduct != null) {
      return requestProduct(this);
    }
    return orElse();
  }
}

abstract class RequestProduct implements ProductEvent {
  const factory RequestProduct() = _$RequestProduct;
}

/// @nodoc
class _$ProductStateTearOff {
  const _$ProductStateTearOff();

  _ProductState call(
      {required bool isLoading,
      required List<Product> products,
      required Option<Either<ProductFailure, Unit>>
          productRequestFailureOrSucces}) {
    return _ProductState(
      isLoading: isLoading,
      products: products,
      productRequestFailureOrSucces: productRequestFailureOrSucces,
    );
  }
}

/// @nodoc
const $ProductState = _$ProductStateTearOff();

/// @nodoc
mixin _$ProductState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  Option<Either<ProductFailure, Unit>> get productRequestFailureOrSucces =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<Product> products,
      Option<Either<ProductFailure, Unit>> productRequestFailureOrSucces});
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res> implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  final ProductState _value;
  // ignore: unused_field
  final $Res Function(ProductState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? products = freezed,
    Object? productRequestFailureOrSucces = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      productRequestFailureOrSucces: productRequestFailureOrSucces == freezed
          ? _value.productRequestFailureOrSucces
          : productRequestFailureOrSucces // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProductFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$ProductStateCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$ProductStateCopyWith(
          _ProductState value, $Res Function(_ProductState) then) =
      __$ProductStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<Product> products,
      Option<Either<ProductFailure, Unit>> productRequestFailureOrSucces});
}

/// @nodoc
class __$ProductStateCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
    implements _$ProductStateCopyWith<$Res> {
  __$ProductStateCopyWithImpl(
      _ProductState _value, $Res Function(_ProductState) _then)
      : super(_value, (v) => _then(v as _ProductState));

  @override
  _ProductState get _value => super._value as _ProductState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? products = freezed,
    Object? productRequestFailureOrSucces = freezed,
  }) {
    return _then(_ProductState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      productRequestFailureOrSucces: productRequestFailureOrSucces == freezed
          ? _value.productRequestFailureOrSucces
          : productRequestFailureOrSucces // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProductFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ProductState implements _ProductState {
  const _$_ProductState(
      {required this.isLoading,
      required this.products,
      required this.productRequestFailureOrSucces});

  @override
  final bool isLoading;
  @override
  final List<Product> products;
  @override
  final Option<Either<ProductFailure, Unit>> productRequestFailureOrSucces;

  @override
  String toString() {
    return 'ProductState(isLoading: $isLoading, products: $products, productRequestFailureOrSucces: $productRequestFailureOrSucces)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.products, products) &&
            const DeepCollectionEquality().equals(
                other.productRequestFailureOrSucces,
                productRequestFailureOrSucces));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(products),
      const DeepCollectionEquality().hash(productRequestFailureOrSucces));

  @JsonKey(ignore: true)
  @override
  _$ProductStateCopyWith<_ProductState> get copyWith =>
      __$ProductStateCopyWithImpl<_ProductState>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState(
      {required bool isLoading,
      required List<Product> products,
      required Option<Either<ProductFailure, Unit>>
          productRequestFailureOrSucces}) = _$_ProductState;

  @override
  bool get isLoading;
  @override
  List<Product> get products;
  @override
  Option<Either<ProductFailure, Unit>> get productRequestFailureOrSucces;
  @override
  @JsonKey(ignore: true)
  _$ProductStateCopyWith<_ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}
