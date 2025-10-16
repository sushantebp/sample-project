// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CryptoModel {

 String get coin; String get wallet; String get network;
/// Create a copy of CryptoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CryptoModelCopyWith<CryptoModel> get copyWith => _$CryptoModelCopyWithImpl<CryptoModel>(this as CryptoModel, _$identity);

  /// Serializes this CryptoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CryptoModel&&(identical(other.coin, coin) || other.coin == coin)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.network, network) || other.network == network));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coin,wallet,network);

@override
String toString() {
  return 'CryptoModel(coin: $coin, wallet: $wallet, network: $network)';
}


}

/// @nodoc
abstract mixin class $CryptoModelCopyWith<$Res>  {
  factory $CryptoModelCopyWith(CryptoModel value, $Res Function(CryptoModel) _then) = _$CryptoModelCopyWithImpl;
@useResult
$Res call({
 String coin, String wallet, String network
});




}
/// @nodoc
class _$CryptoModelCopyWithImpl<$Res>
    implements $CryptoModelCopyWith<$Res> {
  _$CryptoModelCopyWithImpl(this._self, this._then);

  final CryptoModel _self;
  final $Res Function(CryptoModel) _then;

/// Create a copy of CryptoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? coin = null,Object? wallet = null,Object? network = null,}) {
  return _then(_self.copyWith(
coin: null == coin ? _self.coin : coin // ignore: cast_nullable_to_non_nullable
as String,wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as String,network: null == network ? _self.network : network // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CryptoModel].
extension CryptoModelPatterns on CryptoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CryptoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CryptoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CryptoModel value)  $default,){
final _that = this;
switch (_that) {
case _CryptoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CryptoModel value)?  $default,){
final _that = this;
switch (_that) {
case _CryptoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String coin,  String wallet,  String network)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CryptoModel() when $default != null:
return $default(_that.coin,_that.wallet,_that.network);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String coin,  String wallet,  String network)  $default,) {final _that = this;
switch (_that) {
case _CryptoModel():
return $default(_that.coin,_that.wallet,_that.network);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String coin,  String wallet,  String network)?  $default,) {final _that = this;
switch (_that) {
case _CryptoModel() when $default != null:
return $default(_that.coin,_that.wallet,_that.network);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CryptoModel implements CryptoModel {
  const _CryptoModel({required this.coin, required this.wallet, required this.network});
  factory _CryptoModel.fromJson(Map<String, dynamic> json) => _$CryptoModelFromJson(json);

@override final  String coin;
@override final  String wallet;
@override final  String network;

/// Create a copy of CryptoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CryptoModelCopyWith<_CryptoModel> get copyWith => __$CryptoModelCopyWithImpl<_CryptoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CryptoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CryptoModel&&(identical(other.coin, coin) || other.coin == coin)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.network, network) || other.network == network));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coin,wallet,network);

@override
String toString() {
  return 'CryptoModel(coin: $coin, wallet: $wallet, network: $network)';
}


}

/// @nodoc
abstract mixin class _$CryptoModelCopyWith<$Res> implements $CryptoModelCopyWith<$Res> {
  factory _$CryptoModelCopyWith(_CryptoModel value, $Res Function(_CryptoModel) _then) = __$CryptoModelCopyWithImpl;
@override @useResult
$Res call({
 String coin, String wallet, String network
});




}
/// @nodoc
class __$CryptoModelCopyWithImpl<$Res>
    implements _$CryptoModelCopyWith<$Res> {
  __$CryptoModelCopyWithImpl(this._self, this._then);

  final _CryptoModel _self;
  final $Res Function(_CryptoModel) _then;

/// Create a copy of CryptoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? coin = null,Object? wallet = null,Object? network = null,}) {
  return _then(_CryptoModel(
coin: null == coin ? _self.coin : coin // ignore: cast_nullable_to_non_nullable
as String,wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as String,network: null == network ? _self.network : network // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
