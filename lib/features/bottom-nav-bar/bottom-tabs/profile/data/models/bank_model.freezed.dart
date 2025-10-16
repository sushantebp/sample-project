// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BankModel {

 String get cardExpire; String get cardNumber; String get cardType; String get currency; String get iban;
/// Create a copy of BankModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BankModelCopyWith<BankModel> get copyWith => _$BankModelCopyWithImpl<BankModel>(this as BankModel, _$identity);

  /// Serializes this BankModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BankModel&&(identical(other.cardExpire, cardExpire) || other.cardExpire == cardExpire)&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.cardType, cardType) || other.cardType == cardType)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.iban, iban) || other.iban == iban));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardExpire,cardNumber,cardType,currency,iban);

@override
String toString() {
  return 'BankModel(cardExpire: $cardExpire, cardNumber: $cardNumber, cardType: $cardType, currency: $currency, iban: $iban)';
}


}

/// @nodoc
abstract mixin class $BankModelCopyWith<$Res>  {
  factory $BankModelCopyWith(BankModel value, $Res Function(BankModel) _then) = _$BankModelCopyWithImpl;
@useResult
$Res call({
 String cardExpire, String cardNumber, String cardType, String currency, String iban
});




}
/// @nodoc
class _$BankModelCopyWithImpl<$Res>
    implements $BankModelCopyWith<$Res> {
  _$BankModelCopyWithImpl(this._self, this._then);

  final BankModel _self;
  final $Res Function(BankModel) _then;

/// Create a copy of BankModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cardExpire = null,Object? cardNumber = null,Object? cardType = null,Object? currency = null,Object? iban = null,}) {
  return _then(_self.copyWith(
cardExpire: null == cardExpire ? _self.cardExpire : cardExpire // ignore: cast_nullable_to_non_nullable
as String,cardNumber: null == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String,cardType: null == cardType ? _self.cardType : cardType // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,iban: null == iban ? _self.iban : iban // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BankModel].
extension BankModelPatterns on BankModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BankModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BankModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BankModel value)  $default,){
final _that = this;
switch (_that) {
case _BankModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BankModel value)?  $default,){
final _that = this;
switch (_that) {
case _BankModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String cardExpire,  String cardNumber,  String cardType,  String currency,  String iban)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BankModel() when $default != null:
return $default(_that.cardExpire,_that.cardNumber,_that.cardType,_that.currency,_that.iban);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String cardExpire,  String cardNumber,  String cardType,  String currency,  String iban)  $default,) {final _that = this;
switch (_that) {
case _BankModel():
return $default(_that.cardExpire,_that.cardNumber,_that.cardType,_that.currency,_that.iban);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String cardExpire,  String cardNumber,  String cardType,  String currency,  String iban)?  $default,) {final _that = this;
switch (_that) {
case _BankModel() when $default != null:
return $default(_that.cardExpire,_that.cardNumber,_that.cardType,_that.currency,_that.iban);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BankModel implements BankModel {
  const _BankModel({required this.cardExpire, required this.cardNumber, required this.cardType, required this.currency, required this.iban});
  factory _BankModel.fromJson(Map<String, dynamic> json) => _$BankModelFromJson(json);

@override final  String cardExpire;
@override final  String cardNumber;
@override final  String cardType;
@override final  String currency;
@override final  String iban;

/// Create a copy of BankModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BankModelCopyWith<_BankModel> get copyWith => __$BankModelCopyWithImpl<_BankModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BankModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BankModel&&(identical(other.cardExpire, cardExpire) || other.cardExpire == cardExpire)&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.cardType, cardType) || other.cardType == cardType)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.iban, iban) || other.iban == iban));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardExpire,cardNumber,cardType,currency,iban);

@override
String toString() {
  return 'BankModel(cardExpire: $cardExpire, cardNumber: $cardNumber, cardType: $cardType, currency: $currency, iban: $iban)';
}


}

/// @nodoc
abstract mixin class _$BankModelCopyWith<$Res> implements $BankModelCopyWith<$Res> {
  factory _$BankModelCopyWith(_BankModel value, $Res Function(_BankModel) _then) = __$BankModelCopyWithImpl;
@override @useResult
$Res call({
 String cardExpire, String cardNumber, String cardType, String currency, String iban
});




}
/// @nodoc
class __$BankModelCopyWithImpl<$Res>
    implements _$BankModelCopyWith<$Res> {
  __$BankModelCopyWithImpl(this._self, this._then);

  final _BankModel _self;
  final $Res Function(_BankModel) _then;

/// Create a copy of BankModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cardExpire = null,Object? cardNumber = null,Object? cardType = null,Object? currency = null,Object? iban = null,}) {
  return _then(_BankModel(
cardExpire: null == cardExpire ? _self.cardExpire : cardExpire // ignore: cast_nullable_to_non_nullable
as String,cardNumber: null == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String,cardType: null == cardType ? _self.cardType : cardType // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,iban: null == iban ? _self.iban : iban // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
