// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'card_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CardEventTearOff {
  const _$CardEventTearOff();

  GetCards getCards() {
    return const GetCards();
  }

  SetHolderName setHolderName({required String value}) {
    return SetHolderName(
      value: value,
    );
  }

  SetCardNumber setCardNumber({required String value}) {
    return SetCardNumber(
      value: value,
    );
  }

  SetDate setDate({required String value}) {
    return SetDate(
      value: value,
    );
  }

  SetCVV setCVV({required String value}) {
    return SetCVV(
      value: value,
    );
  }

  AddOrEdit addOrEdit() {
    return const AddOrEdit();
  }

  GetPaymentMethod getPaymentMethod() {
    return const GetPaymentMethod();
  }

  SetPaymentMethod setPaymentMethod({required String value}) {
    return SetPaymentMethod(
      value: value,
    );
  }
}

/// @nodoc
const $CardEvent = _$CardEventTearOff();

/// @nodoc
mixin _$CardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCards,
    required TResult Function(String value) setHolderName,
    required TResult Function(String value) setCardNumber,
    required TResult Function(String value) setDate,
    required TResult Function(String value) setCVV,
    required TResult Function() addOrEdit,
    required TResult Function() getPaymentMethod,
    required TResult Function(String value) setPaymentMethod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCards,
    TResult Function(String value)? setHolderName,
    TResult Function(String value)? setCardNumber,
    TResult Function(String value)? setDate,
    TResult Function(String value)? setCVV,
    TResult Function()? addOrEdit,
    TResult Function()? getPaymentMethod,
    TResult Function(String value)? setPaymentMethod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCards,
    TResult Function(String value)? setHolderName,
    TResult Function(String value)? setCardNumber,
    TResult Function(String value)? setDate,
    TResult Function(String value)? setCVV,
    TResult Function()? addOrEdit,
    TResult Function()? getPaymentMethod,
    TResult Function(String value)? setPaymentMethod,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCards value) getCards,
    required TResult Function(SetHolderName value) setHolderName,
    required TResult Function(SetCardNumber value) setCardNumber,
    required TResult Function(SetDate value) setDate,
    required TResult Function(SetCVV value) setCVV,
    required TResult Function(AddOrEdit value) addOrEdit,
    required TResult Function(GetPaymentMethod value) getPaymentMethod,
    required TResult Function(SetPaymentMethod value) setPaymentMethod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCards value)? getCards,
    TResult Function(SetHolderName value)? setHolderName,
    TResult Function(SetCardNumber value)? setCardNumber,
    TResult Function(SetDate value)? setDate,
    TResult Function(SetCVV value)? setCVV,
    TResult Function(AddOrEdit value)? addOrEdit,
    TResult Function(GetPaymentMethod value)? getPaymentMethod,
    TResult Function(SetPaymentMethod value)? setPaymentMethod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCards value)? getCards,
    TResult Function(SetHolderName value)? setHolderName,
    TResult Function(SetCardNumber value)? setCardNumber,
    TResult Function(SetDate value)? setDate,
    TResult Function(SetCVV value)? setCVV,
    TResult Function(AddOrEdit value)? addOrEdit,
    TResult Function(GetPaymentMethod value)? getPaymentMethod,
    TResult Function(SetPaymentMethod value)? setPaymentMethod,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardEventCopyWith<$Res> {
  factory $CardEventCopyWith(CardEvent value, $Res Function(CardEvent) then) =
      _$CardEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CardEventCopyWithImpl<$Res> implements $CardEventCopyWith<$Res> {
  _$CardEventCopyWithImpl(this._value, this._then);

  final CardEvent _value;
  // ignore: unused_field
  final $Res Function(CardEvent) _then;
}

/// @nodoc
abstract class $GetCardsCopyWith<$Res> {
  factory $GetCardsCopyWith(GetCards value, $Res Function(GetCards) then) =
      _$GetCardsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCardsCopyWithImpl<$Res> extends _$CardEventCopyWithImpl<$Res>
    implements $GetCardsCopyWith<$Res> {
  _$GetCardsCopyWithImpl(GetCards _value, $Res Function(GetCards) _then)
      : super(_value, (v) => _then(v as GetCards));

  @override
  GetCards get _value => super._value as GetCards;
}

/// @nodoc

class _$GetCards implements GetCards {
  const _$GetCards();

  @override
  String toString() {
    return 'CardEvent.getCards()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetCards);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCards,
    required TResult Function(String value) setHolderName,
    required TResult Function(String value) setCardNumber,
    required TResult Function(String value) setDate,
    required TResult Function(String value) setCVV,
    required TResult Function() addOrEdit,
    required TResult Function() getPaymentMethod,
    required TResult Function(String value) setPaymentMethod,
  }) {
    return getCards();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCards,
    TResult Function(String value)? setHolderName,
    TResult Function(String value)? setCardNumber,
    TResult Function(String value)? setDate,
    TResult Function(String value)? setCVV,
    TResult Function()? addOrEdit,
    TResult Function()? getPaymentMethod,
    TResult Function(String value)? setPaymentMethod,
  }) {
    return getCards?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCards,
    TResult Function(String value)? setHolderName,
    TResult Function(String value)? setCardNumber,
    TResult Function(String value)? setDate,
    TResult Function(String value)? setCVV,
    TResult Function()? addOrEdit,
    TResult Function()? getPaymentMethod,
    TResult Function(String value)? setPaymentMethod,
    required TResult orElse(),
  }) {
    if (getCards != null) {
      return getCards();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCards value) getCards,
    required TResult Function(SetHolderName value) setHolderName,
    required TResult Function(SetCardNumber value) setCardNumber,
    required TResult Function(SetDate value) setDate,
    required TResult Function(SetCVV value) setCVV,
    required TResult Function(AddOrEdit value) addOrEdit,
    required TResult Function(GetPaymentMethod value) getPaymentMethod,
    required TResult Function(SetPaymentMethod value) setPaymentMethod,
  }) {
    return getCards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCards value)? getCards,
    TResult Function(SetHolderName value)? setHolderName,
    TResult Function(SetCardNumber value)? setCardNumber,
    TResult Function(SetDate value)? setDate,
    TResult Function(SetCVV value)? setCVV,
    TResult Function(AddOrEdit value)? addOrEdit,
    TResult Function(GetPaymentMethod value)? getPaymentMethod,
    TResult Function(SetPaymentMethod value)? setPaymentMethod,
  }) {
    return getCards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCards value)? getCards,
    TResult Function(SetHolderName value)? setHolderName,
    TResult Function(SetCardNumber value)? setCardNumber,
    TResult Function(SetDate value)? setDate,
    TResult Function(SetCVV value)? setCVV,
    TResult Function(AddOrEdit value)? addOrEdit,
    TResult Function(GetPaymentMethod value)? getPaymentMethod,
    TResult Function(SetPaymentMethod value)? setPaymentMethod,
    required TResult orElse(),
  }) {
    if (getCards != null) {
      return getCards(this);
    }
    return orElse();
  }
}

abstract class GetCards implements CardEvent {
  const factory GetCards() = _$GetCards;
}

/// @nodoc
abstract class $SetHolderNameCopyWith<$Res> {
  factory $SetHolderNameCopyWith(
          SetHolderName value, $Res Function(SetHolderName) then) =
      _$SetHolderNameCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$SetHolderNameCopyWithImpl<$Res> extends _$CardEventCopyWithImpl<$Res>
    implements $SetHolderNameCopyWith<$Res> {
  _$SetHolderNameCopyWithImpl(
      SetHolderName _value, $Res Function(SetHolderName) _then)
      : super(_value, (v) => _then(v as SetHolderName));

  @override
  SetHolderName get _value => super._value as SetHolderName;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(SetHolderName(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetHolderName implements SetHolderName {
  const _$SetHolderName({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'CardEvent.setHolderName(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetHolderName &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $SetHolderNameCopyWith<SetHolderName> get copyWith =>
      _$SetHolderNameCopyWithImpl<SetHolderName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCards,
    required TResult Function(String value) setHolderName,
    required TResult Function(String value) setCardNumber,
    required TResult Function(String value) setDate,
    required TResult Function(String value) setCVV,
    required TResult Function() addOrEdit,
    required TResult Function() getPaymentMethod,
    required TResult Function(String value) setPaymentMethod,
  }) {
    return setHolderName(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCards,
    TResult Function(String value)? setHolderName,
    TResult Function(String value)? setCardNumber,
    TResult Function(String value)? setDate,
    TResult Function(String value)? setCVV,
    TResult Function()? addOrEdit,
    TResult Function()? getPaymentMethod,
    TResult Function(String value)? setPaymentMethod,
  }) {
    return setHolderName?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCards,
    TResult Function(String value)? setHolderName,
    TResult Function(String value)? setCardNumber,
    TResult Function(String value)? setDate,
    TResult Function(String value)? setCVV,
    TResult Function()? addOrEdit,
    TResult Function()? getPaymentMethod,
    TResult Function(String value)? setPaymentMethod,
    required TResult orElse(),
  }) {
    if (setHolderName != null) {
      return setHolderName(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCards value) getCards,
    required TResult Function(SetHolderName value) setHolderName,
    required TResult Function(SetCardNumber value) setCardNumber,
    required TResult Function(SetDate value) setDate,
    required TResult Function(SetCVV value) setCVV,
    required TResult Function(AddOrEdit value) addOrEdit,
    required TResult Function(GetPaymentMethod value) getPaymentMethod,
    required TResult Function(SetPaymentMethod value) setPaymentMethod,
  }) {
    return setHolderName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCards value)? getCards,
    TResult Function(SetHolderName value)? setHolderName,
    TResult Function(SetCardNumber value)? setCardNumber,
    TResult Function(SetDate value)? setDate,
    TResult Function(SetCVV value)? setCVV,
    TResult Function(AddOrEdit value)? addOrEdit,
    TResult Function(GetPaymentMethod value)? getPaymentMethod,
    TResult Function(SetPaymentMethod value)? setPaymentMethod,
  }) {
    return setHolderName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCards value)? getCards,
    TResult Function(SetHolderName value)? setHolderName,
    TResult Function(SetCardNumber value)? setCardNumber,
    TResult Function(SetDate value)? setDate,
    TResult Function(SetCVV value)? setCVV,
    TResult Function(AddOrEdit value)? addOrEdit,
    TResult Function(GetPaymentMethod value)? getPaymentMethod,
    TResult Function(SetPaymentMethod value)? setPaymentMethod,
    required TResult orElse(),
  }) {
    if (setHolderName != null) {
      return setHolderName(this);
    }
    return orElse();
  }
}

abstract class SetHolderName implements CardEvent {
  const factory SetHolderName({required String value}) = _$SetHolderName;

  String get value;
  @JsonKey(ignore: true)
  $SetHolderNameCopyWith<SetHolderName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetCardNumberCopyWith<$Res> {
  factory $SetCardNumberCopyWith(
          SetCardNumber value, $Res Function(SetCardNumber) then) =
      _$SetCardNumberCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$SetCardNumberCopyWithImpl<$Res> extends _$CardEventCopyWithImpl<$Res>
    implements $SetCardNumberCopyWith<$Res> {
  _$SetCardNumberCopyWithImpl(
      SetCardNumber _value, $Res Function(SetCardNumber) _then)
      : super(_value, (v) => _then(v as SetCardNumber));

  @override
  SetCardNumber get _value => super._value as SetCardNumber;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(SetCardNumber(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetCardNumber implements SetCardNumber {
  const _$SetCardNumber({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'CardEvent.setCardNumber(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetCardNumber &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $SetCardNumberCopyWith<SetCardNumber> get copyWith =>
      _$SetCardNumberCopyWithImpl<SetCardNumber>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCards,
    required TResult Function(String value) setHolderName,
    required TResult Function(String value) setCardNumber,
    required TResult Function(String value) setDate,
    required TResult Function(String value) setCVV,
    required TResult Function() addOrEdit,
    required TResult Function() getPaymentMethod,
    required TResult Function(String value) setPaymentMethod,
  }) {
    return setCardNumber(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCards,
    TResult Function(String value)? setHolderName,
    TResult Function(String value)? setCardNumber,
    TResult Function(String value)? setDate,
    TResult Function(String value)? setCVV,
    TResult Function()? addOrEdit,
    TResult Function()? getPaymentMethod,
    TResult Function(String value)? setPaymentMethod,
  }) {
    return setCardNumber?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCards,
    TResult Function(String value)? setHolderName,
    TResult Function(String value)? setCardNumber,
    TResult Function(String value)? setDate,
    TResult Function(String value)? setCVV,
    TResult Function()? addOrEdit,
    TResult Function()? getPaymentMethod,
    TResult Function(String value)? setPaymentMethod,
    required TResult orElse(),
  }) {
    if (setCardNumber != null) {
      return setCardNumber(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCards value) getCards,
    required TResult Function(SetHolderName value) setHolderName,
    required TResult Function(SetCardNumber value) setCardNumber,
    required TResult Function(SetDate value) setDate,
    required TResult Function(SetCVV value) setCVV,
    required TResult Function(AddOrEdit value) addOrEdit,
    required TResult Function(GetPaymentMethod value) getPaymentMethod,
    required TResult Function(SetPaymentMethod value) setPaymentMethod,
  }) {
    return setCardNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCards value)? getCards,
    TResult Function(SetHolderName value)? setHolderName,
    TResult Function(SetCardNumber value)? setCardNumber,
    TResult Function(SetDate value)? setDate,
    TResult Function(SetCVV value)? setCVV,
    TResult Function(AddOrEdit value)? addOrEdit,
    TResult Function(GetPaymentMethod value)? getPaymentMethod,
    TResult Function(SetPaymentMethod value)? setPaymentMethod,
  }) {
    return setCardNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCards value)? getCards,
    TResult Function(SetHolderName value)? setHolderName,
    TResult Function(SetCardNumber value)? setCardNumber,
    TResult Function(SetDate value)? setDate,
    TResult Function(SetCVV value)? setCVV,
    TResult Function(AddOrEdit value)? addOrEdit,
    TResult Function(GetPaymentMethod value)? getPaymentMethod,
    TResult Function(SetPaymentMethod value)? setPaymentMethod,
    required TResult orElse(),
  }) {
    if (setCardNumber != null) {
      return setCardNumber(this);
    }
    return orElse();
  }
}

abstract class SetCardNumber implements CardEvent {
  const factory SetCardNumber({required String value}) = _$SetCardNumber;

  String get value;
  @JsonKey(ignore: true)
  $SetCardNumberCopyWith<SetCardNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetDateCopyWith<$Res> {
  factory $SetDateCopyWith(SetDate value, $Res Function(SetDate) then) =
      _$SetDateCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$SetDateCopyWithImpl<$Res> extends _$CardEventCopyWithImpl<$Res>
    implements $SetDateCopyWith<$Res> {
  _$SetDateCopyWithImpl(SetDate _value, $Res Function(SetDate) _then)
      : super(_value, (v) => _then(v as SetDate));

  @override
  SetDate get _value => super._value as SetDate;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(SetDate(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetDate implements SetDate {
  const _$SetDate({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'CardEvent.setDate(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetDate &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $SetDateCopyWith<SetDate> get copyWith =>
      _$SetDateCopyWithImpl<SetDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCards,
    required TResult Function(String value) setHolderName,
    required TResult Function(String value) setCardNumber,
    required TResult Function(String value) setDate,
    required TResult Function(String value) setCVV,
    required TResult Function() addOrEdit,
    required TResult Function() getPaymentMethod,
    required TResult Function(String value) setPaymentMethod,
  }) {
    return setDate(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCards,
    TResult Function(String value)? setHolderName,
    TResult Function(String value)? setCardNumber,
    TResult Function(String value)? setDate,
    TResult Function(String value)? setCVV,
    TResult Function()? addOrEdit,
    TResult Function()? getPaymentMethod,
    TResult Function(String value)? setPaymentMethod,
  }) {
    return setDate?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCards,
    TResult Function(String value)? setHolderName,
    TResult Function(String value)? setCardNumber,
    TResult Function(String value)? setDate,
    TResult Function(String value)? setCVV,
    TResult Function()? addOrEdit,
    TResult Function()? getPaymentMethod,
    TResult Function(String value)? setPaymentMethod,
    required TResult orElse(),
  }) {
    if (setDate != null) {
      return setDate(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCards value) getCards,
    required TResult Function(SetHolderName value) setHolderName,
    required TResult Function(SetCardNumber value) setCardNumber,
    required TResult Function(SetDate value) setDate,
    required TResult Function(SetCVV value) setCVV,
    required TResult Function(AddOrEdit value) addOrEdit,
    required TResult Function(GetPaymentMethod value) getPaymentMethod,
    required TResult Function(SetPaymentMethod value) setPaymentMethod,
  }) {
    return setDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCards value)? getCards,
    TResult Function(SetHolderName value)? setHolderName,
    TResult Function(SetCardNumber value)? setCardNumber,
    TResult Function(SetDate value)? setDate,
    TResult Function(SetCVV value)? setCVV,
    TResult Function(AddOrEdit value)? addOrEdit,
    TResult Function(GetPaymentMethod value)? getPaymentMethod,
    TResult Function(SetPaymentMethod value)? setPaymentMethod,
  }) {
    return setDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCards value)? getCards,
    TResult Function(SetHolderName value)? setHolderName,
    TResult Function(SetCardNumber value)? setCardNumber,
    TResult Function(SetDate value)? setDate,
    TResult Function(SetCVV value)? setCVV,
    TResult Function(AddOrEdit value)? addOrEdit,
    TResult Function(GetPaymentMethod value)? getPaymentMethod,
    TResult Function(SetPaymentMethod value)? setPaymentMethod,
    required TResult orElse(),
  }) {
    if (setDate != null) {
      return setDate(this);
    }
    return orElse();
  }
}

abstract class SetDate implements CardEvent {
  const factory SetDate({required String value}) = _$SetDate;

  String get value;
  @JsonKey(ignore: true)
  $SetDateCopyWith<SetDate> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetCVVCopyWith<$Res> {
  factory $SetCVVCopyWith(SetCVV value, $Res Function(SetCVV) then) =
      _$SetCVVCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$SetCVVCopyWithImpl<$Res> extends _$CardEventCopyWithImpl<$Res>
    implements $SetCVVCopyWith<$Res> {
  _$SetCVVCopyWithImpl(SetCVV _value, $Res Function(SetCVV) _then)
      : super(_value, (v) => _then(v as SetCVV));

  @override
  SetCVV get _value => super._value as SetCVV;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(SetCVV(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetCVV implements SetCVV {
  const _$SetCVV({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'CardEvent.setCVV(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetCVV &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $SetCVVCopyWith<SetCVV> get copyWith =>
      _$SetCVVCopyWithImpl<SetCVV>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCards,
    required TResult Function(String value) setHolderName,
    required TResult Function(String value) setCardNumber,
    required TResult Function(String value) setDate,
    required TResult Function(String value) setCVV,
    required TResult Function() addOrEdit,
    required TResult Function() getPaymentMethod,
    required TResult Function(String value) setPaymentMethod,
  }) {
    return setCVV(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCards,
    TResult Function(String value)? setHolderName,
    TResult Function(String value)? setCardNumber,
    TResult Function(String value)? setDate,
    TResult Function(String value)? setCVV,
    TResult Function()? addOrEdit,
    TResult Function()? getPaymentMethod,
    TResult Function(String value)? setPaymentMethod,
  }) {
    return setCVV?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCards,
    TResult Function(String value)? setHolderName,
    TResult Function(String value)? setCardNumber,
    TResult Function(String value)? setDate,
    TResult Function(String value)? setCVV,
    TResult Function()? addOrEdit,
    TResult Function()? getPaymentMethod,
    TResult Function(String value)? setPaymentMethod,
    required TResult orElse(),
  }) {
    if (setCVV != null) {
      return setCVV(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCards value) getCards,
    required TResult Function(SetHolderName value) setHolderName,
    required TResult Function(SetCardNumber value) setCardNumber,
    required TResult Function(SetDate value) setDate,
    required TResult Function(SetCVV value) setCVV,
    required TResult Function(AddOrEdit value) addOrEdit,
    required TResult Function(GetPaymentMethod value) getPaymentMethod,
    required TResult Function(SetPaymentMethod value) setPaymentMethod,
  }) {
    return setCVV(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCards value)? getCards,
    TResult Function(SetHolderName value)? setHolderName,
    TResult Function(SetCardNumber value)? setCardNumber,
    TResult Function(SetDate value)? setDate,
    TResult Function(SetCVV value)? setCVV,
    TResult Function(AddOrEdit value)? addOrEdit,
    TResult Function(GetPaymentMethod value)? getPaymentMethod,
    TResult Function(SetPaymentMethod value)? setPaymentMethod,
  }) {
    return setCVV?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCards value)? getCards,
    TResult Function(SetHolderName value)? setHolderName,
    TResult Function(SetCardNumber value)? setCardNumber,
    TResult Function(SetDate value)? setDate,
    TResult Function(SetCVV value)? setCVV,
    TResult Function(AddOrEdit value)? addOrEdit,
    TResult Function(GetPaymentMethod value)? getPaymentMethod,
    TResult Function(SetPaymentMethod value)? setPaymentMethod,
    required TResult orElse(),
  }) {
    if (setCVV != null) {
      return setCVV(this);
    }
    return orElse();
  }
}

abstract class SetCVV implements CardEvent {
  const factory SetCVV({required String value}) = _$SetCVV;

  String get value;
  @JsonKey(ignore: true)
  $SetCVVCopyWith<SetCVV> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddOrEditCopyWith<$Res> {
  factory $AddOrEditCopyWith(AddOrEdit value, $Res Function(AddOrEdit) then) =
      _$AddOrEditCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddOrEditCopyWithImpl<$Res> extends _$CardEventCopyWithImpl<$Res>
    implements $AddOrEditCopyWith<$Res> {
  _$AddOrEditCopyWithImpl(AddOrEdit _value, $Res Function(AddOrEdit) _then)
      : super(_value, (v) => _then(v as AddOrEdit));

  @override
  AddOrEdit get _value => super._value as AddOrEdit;
}

/// @nodoc

class _$AddOrEdit implements AddOrEdit {
  const _$AddOrEdit();

  @override
  String toString() {
    return 'CardEvent.addOrEdit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddOrEdit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCards,
    required TResult Function(String value) setHolderName,
    required TResult Function(String value) setCardNumber,
    required TResult Function(String value) setDate,
    required TResult Function(String value) setCVV,
    required TResult Function() addOrEdit,
    required TResult Function() getPaymentMethod,
    required TResult Function(String value) setPaymentMethod,
  }) {
    return addOrEdit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCards,
    TResult Function(String value)? setHolderName,
    TResult Function(String value)? setCardNumber,
    TResult Function(String value)? setDate,
    TResult Function(String value)? setCVV,
    TResult Function()? addOrEdit,
    TResult Function()? getPaymentMethod,
    TResult Function(String value)? setPaymentMethod,
  }) {
    return addOrEdit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCards,
    TResult Function(String value)? setHolderName,
    TResult Function(String value)? setCardNumber,
    TResult Function(String value)? setDate,
    TResult Function(String value)? setCVV,
    TResult Function()? addOrEdit,
    TResult Function()? getPaymentMethod,
    TResult Function(String value)? setPaymentMethod,
    required TResult orElse(),
  }) {
    if (addOrEdit != null) {
      return addOrEdit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCards value) getCards,
    required TResult Function(SetHolderName value) setHolderName,
    required TResult Function(SetCardNumber value) setCardNumber,
    required TResult Function(SetDate value) setDate,
    required TResult Function(SetCVV value) setCVV,
    required TResult Function(AddOrEdit value) addOrEdit,
    required TResult Function(GetPaymentMethod value) getPaymentMethod,
    required TResult Function(SetPaymentMethod value) setPaymentMethod,
  }) {
    return addOrEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCards value)? getCards,
    TResult Function(SetHolderName value)? setHolderName,
    TResult Function(SetCardNumber value)? setCardNumber,
    TResult Function(SetDate value)? setDate,
    TResult Function(SetCVV value)? setCVV,
    TResult Function(AddOrEdit value)? addOrEdit,
    TResult Function(GetPaymentMethod value)? getPaymentMethod,
    TResult Function(SetPaymentMethod value)? setPaymentMethod,
  }) {
    return addOrEdit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCards value)? getCards,
    TResult Function(SetHolderName value)? setHolderName,
    TResult Function(SetCardNumber value)? setCardNumber,
    TResult Function(SetDate value)? setDate,
    TResult Function(SetCVV value)? setCVV,
    TResult Function(AddOrEdit value)? addOrEdit,
    TResult Function(GetPaymentMethod value)? getPaymentMethod,
    TResult Function(SetPaymentMethod value)? setPaymentMethod,
    required TResult orElse(),
  }) {
    if (addOrEdit != null) {
      return addOrEdit(this);
    }
    return orElse();
  }
}

abstract class AddOrEdit implements CardEvent {
  const factory AddOrEdit() = _$AddOrEdit;
}

/// @nodoc
abstract class $GetPaymentMethodCopyWith<$Res> {
  factory $GetPaymentMethodCopyWith(
          GetPaymentMethod value, $Res Function(GetPaymentMethod) then) =
      _$GetPaymentMethodCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetPaymentMethodCopyWithImpl<$Res> extends _$CardEventCopyWithImpl<$Res>
    implements $GetPaymentMethodCopyWith<$Res> {
  _$GetPaymentMethodCopyWithImpl(
      GetPaymentMethod _value, $Res Function(GetPaymentMethod) _then)
      : super(_value, (v) => _then(v as GetPaymentMethod));

  @override
  GetPaymentMethod get _value => super._value as GetPaymentMethod;
}

/// @nodoc

class _$GetPaymentMethod implements GetPaymentMethod {
  const _$GetPaymentMethod();

  @override
  String toString() {
    return 'CardEvent.getPaymentMethod()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetPaymentMethod);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCards,
    required TResult Function(String value) setHolderName,
    required TResult Function(String value) setCardNumber,
    required TResult Function(String value) setDate,
    required TResult Function(String value) setCVV,
    required TResult Function() addOrEdit,
    required TResult Function() getPaymentMethod,
    required TResult Function(String value) setPaymentMethod,
  }) {
    return getPaymentMethod();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCards,
    TResult Function(String value)? setHolderName,
    TResult Function(String value)? setCardNumber,
    TResult Function(String value)? setDate,
    TResult Function(String value)? setCVV,
    TResult Function()? addOrEdit,
    TResult Function()? getPaymentMethod,
    TResult Function(String value)? setPaymentMethod,
  }) {
    return getPaymentMethod?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCards,
    TResult Function(String value)? setHolderName,
    TResult Function(String value)? setCardNumber,
    TResult Function(String value)? setDate,
    TResult Function(String value)? setCVV,
    TResult Function()? addOrEdit,
    TResult Function()? getPaymentMethod,
    TResult Function(String value)? setPaymentMethod,
    required TResult orElse(),
  }) {
    if (getPaymentMethod != null) {
      return getPaymentMethod();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCards value) getCards,
    required TResult Function(SetHolderName value) setHolderName,
    required TResult Function(SetCardNumber value) setCardNumber,
    required TResult Function(SetDate value) setDate,
    required TResult Function(SetCVV value) setCVV,
    required TResult Function(AddOrEdit value) addOrEdit,
    required TResult Function(GetPaymentMethod value) getPaymentMethod,
    required TResult Function(SetPaymentMethod value) setPaymentMethod,
  }) {
    return getPaymentMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCards value)? getCards,
    TResult Function(SetHolderName value)? setHolderName,
    TResult Function(SetCardNumber value)? setCardNumber,
    TResult Function(SetDate value)? setDate,
    TResult Function(SetCVV value)? setCVV,
    TResult Function(AddOrEdit value)? addOrEdit,
    TResult Function(GetPaymentMethod value)? getPaymentMethod,
    TResult Function(SetPaymentMethod value)? setPaymentMethod,
  }) {
    return getPaymentMethod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCards value)? getCards,
    TResult Function(SetHolderName value)? setHolderName,
    TResult Function(SetCardNumber value)? setCardNumber,
    TResult Function(SetDate value)? setDate,
    TResult Function(SetCVV value)? setCVV,
    TResult Function(AddOrEdit value)? addOrEdit,
    TResult Function(GetPaymentMethod value)? getPaymentMethod,
    TResult Function(SetPaymentMethod value)? setPaymentMethod,
    required TResult orElse(),
  }) {
    if (getPaymentMethod != null) {
      return getPaymentMethod(this);
    }
    return orElse();
  }
}

abstract class GetPaymentMethod implements CardEvent {
  const factory GetPaymentMethod() = _$GetPaymentMethod;
}

/// @nodoc
abstract class $SetPaymentMethodCopyWith<$Res> {
  factory $SetPaymentMethodCopyWith(
          SetPaymentMethod value, $Res Function(SetPaymentMethod) then) =
      _$SetPaymentMethodCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$SetPaymentMethodCopyWithImpl<$Res> extends _$CardEventCopyWithImpl<$Res>
    implements $SetPaymentMethodCopyWith<$Res> {
  _$SetPaymentMethodCopyWithImpl(
      SetPaymentMethod _value, $Res Function(SetPaymentMethod) _then)
      : super(_value, (v) => _then(v as SetPaymentMethod));

  @override
  SetPaymentMethod get _value => super._value as SetPaymentMethod;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(SetPaymentMethod(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetPaymentMethod implements SetPaymentMethod {
  const _$SetPaymentMethod({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'CardEvent.setPaymentMethod(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetPaymentMethod &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $SetPaymentMethodCopyWith<SetPaymentMethod> get copyWith =>
      _$SetPaymentMethodCopyWithImpl<SetPaymentMethod>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCards,
    required TResult Function(String value) setHolderName,
    required TResult Function(String value) setCardNumber,
    required TResult Function(String value) setDate,
    required TResult Function(String value) setCVV,
    required TResult Function() addOrEdit,
    required TResult Function() getPaymentMethod,
    required TResult Function(String value) setPaymentMethod,
  }) {
    return setPaymentMethod(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCards,
    TResult Function(String value)? setHolderName,
    TResult Function(String value)? setCardNumber,
    TResult Function(String value)? setDate,
    TResult Function(String value)? setCVV,
    TResult Function()? addOrEdit,
    TResult Function()? getPaymentMethod,
    TResult Function(String value)? setPaymentMethod,
  }) {
    return setPaymentMethod?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCards,
    TResult Function(String value)? setHolderName,
    TResult Function(String value)? setCardNumber,
    TResult Function(String value)? setDate,
    TResult Function(String value)? setCVV,
    TResult Function()? addOrEdit,
    TResult Function()? getPaymentMethod,
    TResult Function(String value)? setPaymentMethod,
    required TResult orElse(),
  }) {
    if (setPaymentMethod != null) {
      return setPaymentMethod(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCards value) getCards,
    required TResult Function(SetHolderName value) setHolderName,
    required TResult Function(SetCardNumber value) setCardNumber,
    required TResult Function(SetDate value) setDate,
    required TResult Function(SetCVV value) setCVV,
    required TResult Function(AddOrEdit value) addOrEdit,
    required TResult Function(GetPaymentMethod value) getPaymentMethod,
    required TResult Function(SetPaymentMethod value) setPaymentMethod,
  }) {
    return setPaymentMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCards value)? getCards,
    TResult Function(SetHolderName value)? setHolderName,
    TResult Function(SetCardNumber value)? setCardNumber,
    TResult Function(SetDate value)? setDate,
    TResult Function(SetCVV value)? setCVV,
    TResult Function(AddOrEdit value)? addOrEdit,
    TResult Function(GetPaymentMethod value)? getPaymentMethod,
    TResult Function(SetPaymentMethod value)? setPaymentMethod,
  }) {
    return setPaymentMethod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCards value)? getCards,
    TResult Function(SetHolderName value)? setHolderName,
    TResult Function(SetCardNumber value)? setCardNumber,
    TResult Function(SetDate value)? setDate,
    TResult Function(SetCVV value)? setCVV,
    TResult Function(AddOrEdit value)? addOrEdit,
    TResult Function(GetPaymentMethod value)? getPaymentMethod,
    TResult Function(SetPaymentMethod value)? setPaymentMethod,
    required TResult orElse(),
  }) {
    if (setPaymentMethod != null) {
      return setPaymentMethod(this);
    }
    return orElse();
  }
}

abstract class SetPaymentMethod implements CardEvent {
  const factory SetPaymentMethod({required String value}) = _$SetPaymentMethod;

  String get value;
  @JsonKey(ignore: true)
  $SetPaymentMethodCopyWith<SetPaymentMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CardStateTearOff {
  const _$CardStateTearOff();

  _CardState call(
      {required List<Card> allCards,
      required CardName editName,
      required CardNumber editCardNumber,
      required CardDate editCardDate,
      required CVV editCardCvv,
      required Option<Either<CardFailure, Unit>> addOrEditFailureOrSuccess,
      required String paymentMethod}) {
    return _CardState(
      allCards: allCards,
      editName: editName,
      editCardNumber: editCardNumber,
      editCardDate: editCardDate,
      editCardCvv: editCardCvv,
      addOrEditFailureOrSuccess: addOrEditFailureOrSuccess,
      paymentMethod: paymentMethod,
    );
  }
}

/// @nodoc
const $CardState = _$CardStateTearOff();

/// @nodoc
mixin _$CardState {
  List<Card> get allCards => throw _privateConstructorUsedError;
  CardName get editName => throw _privateConstructorUsedError;
  CardNumber get editCardNumber => throw _privateConstructorUsedError;
  CardDate get editCardDate => throw _privateConstructorUsedError;
  CVV get editCardCvv => throw _privateConstructorUsedError;
  Option<Either<CardFailure, Unit>> get addOrEditFailureOrSuccess =>
      throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CardStateCopyWith<CardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardStateCopyWith<$Res> {
  factory $CardStateCopyWith(CardState value, $Res Function(CardState) then) =
      _$CardStateCopyWithImpl<$Res>;
  $Res call(
      {List<Card> allCards,
      CardName editName,
      CardNumber editCardNumber,
      CardDate editCardDate,
      CVV editCardCvv,
      Option<Either<CardFailure, Unit>> addOrEditFailureOrSuccess,
      String paymentMethod});
}

/// @nodoc
class _$CardStateCopyWithImpl<$Res> implements $CardStateCopyWith<$Res> {
  _$CardStateCopyWithImpl(this._value, this._then);

  final CardState _value;
  // ignore: unused_field
  final $Res Function(CardState) _then;

  @override
  $Res call({
    Object? allCards = freezed,
    Object? editName = freezed,
    Object? editCardNumber = freezed,
    Object? editCardDate = freezed,
    Object? editCardCvv = freezed,
    Object? addOrEditFailureOrSuccess = freezed,
    Object? paymentMethod = freezed,
  }) {
    return _then(_value.copyWith(
      allCards: allCards == freezed
          ? _value.allCards
          : allCards // ignore: cast_nullable_to_non_nullable
              as List<Card>,
      editName: editName == freezed
          ? _value.editName
          : editName // ignore: cast_nullable_to_non_nullable
              as CardName,
      editCardNumber: editCardNumber == freezed
          ? _value.editCardNumber
          : editCardNumber // ignore: cast_nullable_to_non_nullable
              as CardNumber,
      editCardDate: editCardDate == freezed
          ? _value.editCardDate
          : editCardDate // ignore: cast_nullable_to_non_nullable
              as CardDate,
      editCardCvv: editCardCvv == freezed
          ? _value.editCardCvv
          : editCardCvv // ignore: cast_nullable_to_non_nullable
              as CVV,
      addOrEditFailureOrSuccess: addOrEditFailureOrSuccess == freezed
          ? _value.addOrEditFailureOrSuccess
          : addOrEditFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<CardFailure, Unit>>,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CardStateCopyWith<$Res> implements $CardStateCopyWith<$Res> {
  factory _$CardStateCopyWith(
          _CardState value, $Res Function(_CardState) then) =
      __$CardStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Card> allCards,
      CardName editName,
      CardNumber editCardNumber,
      CardDate editCardDate,
      CVV editCardCvv,
      Option<Either<CardFailure, Unit>> addOrEditFailureOrSuccess,
      String paymentMethod});
}

/// @nodoc
class __$CardStateCopyWithImpl<$Res> extends _$CardStateCopyWithImpl<$Res>
    implements _$CardStateCopyWith<$Res> {
  __$CardStateCopyWithImpl(_CardState _value, $Res Function(_CardState) _then)
      : super(_value, (v) => _then(v as _CardState));

  @override
  _CardState get _value => super._value as _CardState;

  @override
  $Res call({
    Object? allCards = freezed,
    Object? editName = freezed,
    Object? editCardNumber = freezed,
    Object? editCardDate = freezed,
    Object? editCardCvv = freezed,
    Object? addOrEditFailureOrSuccess = freezed,
    Object? paymentMethod = freezed,
  }) {
    return _then(_CardState(
      allCards: allCards == freezed
          ? _value.allCards
          : allCards // ignore: cast_nullable_to_non_nullable
              as List<Card>,
      editName: editName == freezed
          ? _value.editName
          : editName // ignore: cast_nullable_to_non_nullable
              as CardName,
      editCardNumber: editCardNumber == freezed
          ? _value.editCardNumber
          : editCardNumber // ignore: cast_nullable_to_non_nullable
              as CardNumber,
      editCardDate: editCardDate == freezed
          ? _value.editCardDate
          : editCardDate // ignore: cast_nullable_to_non_nullable
              as CardDate,
      editCardCvv: editCardCvv == freezed
          ? _value.editCardCvv
          : editCardCvv // ignore: cast_nullable_to_non_nullable
              as CVV,
      addOrEditFailureOrSuccess: addOrEditFailureOrSuccess == freezed
          ? _value.addOrEditFailureOrSuccess
          : addOrEditFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<CardFailure, Unit>>,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CardState implements _CardState {
  const _$_CardState(
      {required this.allCards,
      required this.editName,
      required this.editCardNumber,
      required this.editCardDate,
      required this.editCardCvv,
      required this.addOrEditFailureOrSuccess,
      required this.paymentMethod});

  @override
  final List<Card> allCards;
  @override
  final CardName editName;
  @override
  final CardNumber editCardNumber;
  @override
  final CardDate editCardDate;
  @override
  final CVV editCardCvv;
  @override
  final Option<Either<CardFailure, Unit>> addOrEditFailureOrSuccess;
  @override
  final String paymentMethod;

  @override
  String toString() {
    return 'CardState(allCards: $allCards, editName: $editName, editCardNumber: $editCardNumber, editCardDate: $editCardDate, editCardCvv: $editCardCvv, addOrEditFailureOrSuccess: $addOrEditFailureOrSuccess, paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CardState &&
            const DeepCollectionEquality().equals(other.allCards, allCards) &&
            const DeepCollectionEquality().equals(other.editName, editName) &&
            const DeepCollectionEquality()
                .equals(other.editCardNumber, editCardNumber) &&
            const DeepCollectionEquality()
                .equals(other.editCardDate, editCardDate) &&
            const DeepCollectionEquality()
                .equals(other.editCardCvv, editCardCvv) &&
            const DeepCollectionEquality().equals(
                other.addOrEditFailureOrSuccess, addOrEditFailureOrSuccess) &&
            const DeepCollectionEquality()
                .equals(other.paymentMethod, paymentMethod));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(allCards),
      const DeepCollectionEquality().hash(editName),
      const DeepCollectionEquality().hash(editCardNumber),
      const DeepCollectionEquality().hash(editCardDate),
      const DeepCollectionEquality().hash(editCardCvv),
      const DeepCollectionEquality().hash(addOrEditFailureOrSuccess),
      const DeepCollectionEquality().hash(paymentMethod));

  @JsonKey(ignore: true)
  @override
  _$CardStateCopyWith<_CardState> get copyWith =>
      __$CardStateCopyWithImpl<_CardState>(this, _$identity);
}

abstract class _CardState implements CardState {
  const factory _CardState(
      {required List<Card> allCards,
      required CardName editName,
      required CardNumber editCardNumber,
      required CardDate editCardDate,
      required CVV editCardCvv,
      required Option<Either<CardFailure, Unit>> addOrEditFailureOrSuccess,
      required String paymentMethod}) = _$_CardState;

  @override
  List<Card> get allCards;
  @override
  CardName get editName;
  @override
  CardNumber get editCardNumber;
  @override
  CardDate get editCardDate;
  @override
  CVV get editCardCvv;
  @override
  Option<Either<CardFailure, Unit>> get addOrEditFailureOrSuccess;
  @override
  String get paymentMethod;
  @override
  @JsonKey(ignore: true)
  _$CardStateCopyWith<_CardState> get copyWith =>
      throw _privateConstructorUsedError;
}
