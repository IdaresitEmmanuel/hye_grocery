// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartEventTearOff {
  const _$CartEventTearOff();

  AddToCart addToCart({required Product product, required int noOfProduct}) {
    return AddToCart(
      product: product,
      noOfProduct: noOfProduct,
    );
  }

  RemoveFromCart removeFromCart({required String productId}) {
    return RemoveFromCart(
      productId: productId,
    );
  }

  ClearCart clearCart() {
    return const ClearCart();
  }
}

/// @nodoc
const $CartEvent = _$CartEventTearOff();

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product, int noOfProduct) addToCart,
    required TResult Function(String productId) removeFromCart,
    required TResult Function() clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Product product, int noOfProduct)? addToCart,
    TResult Function(String productId)? removeFromCart,
    TResult Function()? clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product, int noOfProduct)? addToCart,
    TResult Function(String productId)? removeFromCart,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(RemoveFromCart value) removeFromCart,
    required TResult Function(ClearCart value) clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddToCart value)? addToCart,
    TResult Function(RemoveFromCart value)? removeFromCart,
    TResult Function(ClearCart value)? clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddToCart value)? addToCart,
    TResult Function(RemoveFromCart value)? removeFromCart,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res> implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  final CartEvent _value;
  // ignore: unused_field
  final $Res Function(CartEvent) _then;
}

/// @nodoc
abstract class $AddToCartCopyWith<$Res> {
  factory $AddToCartCopyWith(AddToCart value, $Res Function(AddToCart) then) =
      _$AddToCartCopyWithImpl<$Res>;
  $Res call({Product product, int noOfProduct});
}

/// @nodoc
class _$AddToCartCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements $AddToCartCopyWith<$Res> {
  _$AddToCartCopyWithImpl(AddToCart _value, $Res Function(AddToCart) _then)
      : super(_value, (v) => _then(v as AddToCart));

  @override
  AddToCart get _value => super._value as AddToCart;

  @override
  $Res call({
    Object? product = freezed,
    Object? noOfProduct = freezed,
  }) {
    return _then(AddToCart(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      noOfProduct: noOfProduct == freezed
          ? _value.noOfProduct
          : noOfProduct // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddToCart implements AddToCart {
  const _$AddToCart({required this.product, required this.noOfProduct});

  @override
  final Product product;
  @override
  final int noOfProduct;

  @override
  String toString() {
    return 'CartEvent.addToCart(product: $product, noOfProduct: $noOfProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddToCart &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality()
                .equals(other.noOfProduct, noOfProduct));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(noOfProduct));

  @JsonKey(ignore: true)
  @override
  $AddToCartCopyWith<AddToCart> get copyWith =>
      _$AddToCartCopyWithImpl<AddToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product, int noOfProduct) addToCart,
    required TResult Function(String productId) removeFromCart,
    required TResult Function() clearCart,
  }) {
    return addToCart(product, noOfProduct);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Product product, int noOfProduct)? addToCart,
    TResult Function(String productId)? removeFromCart,
    TResult Function()? clearCart,
  }) {
    return addToCart?.call(product, noOfProduct);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product, int noOfProduct)? addToCart,
    TResult Function(String productId)? removeFromCart,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(product, noOfProduct);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(RemoveFromCart value) removeFromCart,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddToCart value)? addToCart,
    TResult Function(RemoveFromCart value)? removeFromCart,
    TResult Function(ClearCart value)? clearCart,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddToCart value)? addToCart,
    TResult Function(RemoveFromCart value)? removeFromCart,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class AddToCart implements CartEvent {
  const factory AddToCart(
      {required Product product, required int noOfProduct}) = _$AddToCart;

  Product get product;
  int get noOfProduct;
  @JsonKey(ignore: true)
  $AddToCartCopyWith<AddToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveFromCartCopyWith<$Res> {
  factory $RemoveFromCartCopyWith(
          RemoveFromCart value, $Res Function(RemoveFromCart) then) =
      _$RemoveFromCartCopyWithImpl<$Res>;
  $Res call({String productId});
}

/// @nodoc
class _$RemoveFromCartCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements $RemoveFromCartCopyWith<$Res> {
  _$RemoveFromCartCopyWithImpl(
      RemoveFromCart _value, $Res Function(RemoveFromCart) _then)
      : super(_value, (v) => _then(v as RemoveFromCart));

  @override
  RemoveFromCart get _value => super._value as RemoveFromCart;

  @override
  $Res call({
    Object? productId = freezed,
  }) {
    return _then(RemoveFromCart(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveFromCart implements RemoveFromCart {
  const _$RemoveFromCart({required this.productId});

  @override
  final String productId;

  @override
  String toString() {
    return 'CartEvent.removeFromCart(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoveFromCart &&
            const DeepCollectionEquality().equals(other.productId, productId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(productId));

  @JsonKey(ignore: true)
  @override
  $RemoveFromCartCopyWith<RemoveFromCart> get copyWith =>
      _$RemoveFromCartCopyWithImpl<RemoveFromCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product, int noOfProduct) addToCart,
    required TResult Function(String productId) removeFromCart,
    required TResult Function() clearCart,
  }) {
    return removeFromCart(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Product product, int noOfProduct)? addToCart,
    TResult Function(String productId)? removeFromCart,
    TResult Function()? clearCart,
  }) {
    return removeFromCart?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product, int noOfProduct)? addToCart,
    TResult Function(String productId)? removeFromCart,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(RemoveFromCart value) removeFromCart,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return removeFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddToCart value)? addToCart,
    TResult Function(RemoveFromCart value)? removeFromCart,
    TResult Function(ClearCart value)? clearCart,
  }) {
    return removeFromCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddToCart value)? addToCart,
    TResult Function(RemoveFromCart value)? removeFromCart,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(this);
    }
    return orElse();
  }
}

abstract class RemoveFromCart implements CartEvent {
  const factory RemoveFromCart({required String productId}) = _$RemoveFromCart;

  String get productId;
  @JsonKey(ignore: true)
  $RemoveFromCartCopyWith<RemoveFromCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClearCartCopyWith<$Res> {
  factory $ClearCartCopyWith(ClearCart value, $Res Function(ClearCart) then) =
      _$ClearCartCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClearCartCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements $ClearCartCopyWith<$Res> {
  _$ClearCartCopyWithImpl(ClearCart _value, $Res Function(ClearCart) _then)
      : super(_value, (v) => _then(v as ClearCart));

  @override
  ClearCart get _value => super._value as ClearCart;
}

/// @nodoc

class _$ClearCart implements ClearCart {
  const _$ClearCart();

  @override
  String toString() {
    return 'CartEvent.clearCart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ClearCart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product, int noOfProduct) addToCart,
    required TResult Function(String productId) removeFromCart,
    required TResult Function() clearCart,
  }) {
    return clearCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Product product, int noOfProduct)? addToCart,
    TResult Function(String productId)? removeFromCart,
    TResult Function()? clearCart,
  }) {
    return clearCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product, int noOfProduct)? addToCart,
    TResult Function(String productId)? removeFromCart,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(RemoveFromCart value) removeFromCart,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return clearCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddToCart value)? addToCart,
    TResult Function(RemoveFromCart value)? removeFromCart,
    TResult Function(ClearCart value)? clearCart,
  }) {
    return clearCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddToCart value)? addToCart,
    TResult Function(RemoveFromCart value)? removeFromCart,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart(this);
    }
    return orElse();
  }
}

abstract class ClearCart implements CartEvent {
  const factory ClearCart() = _$ClearCart;
}

/// @nodoc
class _$CartStateTearOff {
  const _$CartStateTearOff();

  _CartState call(
      {required Option<Either<CartFailure, Unit>> itemDeleteFailureOrSuccess,
      required Option<Either<CartFailure, Unit>> itemAddFailureOrSuccess,
      required Option<Either<CartFailure, Unit>> clearCartFailureOrSuccess}) {
    return _CartState(
      itemDeleteFailureOrSuccess: itemDeleteFailureOrSuccess,
      itemAddFailureOrSuccess: itemAddFailureOrSuccess,
      clearCartFailureOrSuccess: clearCartFailureOrSuccess,
    );
  }
}

/// @nodoc
const $CartState = _$CartStateTearOff();

/// @nodoc
mixin _$CartState {
  Option<Either<CartFailure, Unit>> get itemDeleteFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<CartFailure, Unit>> get itemAddFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<CartFailure, Unit>> get clearCartFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<CartFailure, Unit>> itemDeleteFailureOrSuccess,
      Option<Either<CartFailure, Unit>> itemAddFailureOrSuccess,
      Option<Either<CartFailure, Unit>> clearCartFailureOrSuccess});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;

  @override
  $Res call({
    Object? itemDeleteFailureOrSuccess = freezed,
    Object? itemAddFailureOrSuccess = freezed,
    Object? clearCartFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      itemDeleteFailureOrSuccess: itemDeleteFailureOrSuccess == freezed
          ? _value.itemDeleteFailureOrSuccess
          : itemDeleteFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<CartFailure, Unit>>,
      itemAddFailureOrSuccess: itemAddFailureOrSuccess == freezed
          ? _value.itemAddFailureOrSuccess
          : itemAddFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<CartFailure, Unit>>,
      clearCartFailureOrSuccess: clearCartFailureOrSuccess == freezed
          ? _value.clearCartFailureOrSuccess
          : clearCartFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<CartFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$CartStateCopyWith(
          _CartState value, $Res Function(_CartState) then) =
      __$CartStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<CartFailure, Unit>> itemDeleteFailureOrSuccess,
      Option<Either<CartFailure, Unit>> itemAddFailureOrSuccess,
      Option<Either<CartFailure, Unit>> clearCartFailureOrSuccess});
}

/// @nodoc
class __$CartStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$CartStateCopyWith<$Res> {
  __$CartStateCopyWithImpl(_CartState _value, $Res Function(_CartState) _then)
      : super(_value, (v) => _then(v as _CartState));

  @override
  _CartState get _value => super._value as _CartState;

  @override
  $Res call({
    Object? itemDeleteFailureOrSuccess = freezed,
    Object? itemAddFailureOrSuccess = freezed,
    Object? clearCartFailureOrSuccess = freezed,
  }) {
    return _then(_CartState(
      itemDeleteFailureOrSuccess: itemDeleteFailureOrSuccess == freezed
          ? _value.itemDeleteFailureOrSuccess
          : itemDeleteFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<CartFailure, Unit>>,
      itemAddFailureOrSuccess: itemAddFailureOrSuccess == freezed
          ? _value.itemAddFailureOrSuccess
          : itemAddFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<CartFailure, Unit>>,
      clearCartFailureOrSuccess: clearCartFailureOrSuccess == freezed
          ? _value.clearCartFailureOrSuccess
          : clearCartFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<CartFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_CartState implements _CartState {
  const _$_CartState(
      {required this.itemDeleteFailureOrSuccess,
      required this.itemAddFailureOrSuccess,
      required this.clearCartFailureOrSuccess});

  @override
  final Option<Either<CartFailure, Unit>> itemDeleteFailureOrSuccess;
  @override
  final Option<Either<CartFailure, Unit>> itemAddFailureOrSuccess;
  @override
  final Option<Either<CartFailure, Unit>> clearCartFailureOrSuccess;

  @override
  String toString() {
    return 'CartState(itemDeleteFailureOrSuccess: $itemDeleteFailureOrSuccess, itemAddFailureOrSuccess: $itemAddFailureOrSuccess, clearCartFailureOrSuccess: $clearCartFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartState &&
            const DeepCollectionEquality().equals(
                other.itemDeleteFailureOrSuccess, itemDeleteFailureOrSuccess) &&
            const DeepCollectionEquality().equals(
                other.itemAddFailureOrSuccess, itemAddFailureOrSuccess) &&
            const DeepCollectionEquality().equals(
                other.clearCartFailureOrSuccess, clearCartFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(itemDeleteFailureOrSuccess),
      const DeepCollectionEquality().hash(itemAddFailureOrSuccess),
      const DeepCollectionEquality().hash(clearCartFailureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$CartStateCopyWith<_CartState> get copyWith =>
      __$CartStateCopyWithImpl<_CartState>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState(
      {required Option<Either<CartFailure, Unit>> itemDeleteFailureOrSuccess,
      required Option<Either<CartFailure, Unit>> itemAddFailureOrSuccess,
      required Option<Either<CartFailure, Unit>>
          clearCartFailureOrSuccess}) = _$_CartState;

  @override
  Option<Either<CartFailure, Unit>> get itemDeleteFailureOrSuccess;
  @override
  Option<Either<CartFailure, Unit>> get itemAddFailureOrSuccess;
  @override
  Option<Either<CartFailure, Unit>> get clearCartFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$CartStateCopyWith<_CartState> get copyWith =>
      throw _privateConstructorUsedError;
}
