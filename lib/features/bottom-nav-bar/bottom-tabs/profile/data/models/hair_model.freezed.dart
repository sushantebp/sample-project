// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hair_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HairModel {

 String get color; String get type;
/// Create a copy of HairModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HairModelCopyWith<HairModel> get copyWith => _$HairModelCopyWithImpl<HairModel>(this as HairModel, _$identity);

  /// Serializes this HairModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HairModel&&(identical(other.color, color) || other.color == color)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,color,type);

@override
String toString() {
  return 'HairModel(color: $color, type: $type)';
}


}

/// @nodoc
abstract mixin class $HairModelCopyWith<$Res>  {
  factory $HairModelCopyWith(HairModel value, $Res Function(HairModel) _then) = _$HairModelCopyWithImpl;
@useResult
$Res call({
 String color, String type
});




}
/// @nodoc
class _$HairModelCopyWithImpl<$Res>
    implements $HairModelCopyWith<$Res> {
  _$HairModelCopyWithImpl(this._self, this._then);

  final HairModel _self;
  final $Res Function(HairModel) _then;

/// Create a copy of HairModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? color = null,Object? type = null,}) {
  return _then(_self.copyWith(
color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HairModel].
extension HairModelPatterns on HairModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HairModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HairModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HairModel value)  $default,){
final _that = this;
switch (_that) {
case _HairModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HairModel value)?  $default,){
final _that = this;
switch (_that) {
case _HairModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String color,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HairModel() when $default != null:
return $default(_that.color,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String color,  String type)  $default,) {final _that = this;
switch (_that) {
case _HairModel():
return $default(_that.color,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String color,  String type)?  $default,) {final _that = this;
switch (_that) {
case _HairModel() when $default != null:
return $default(_that.color,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HairModel implements HairModel {
  const _HairModel({required this.color, required this.type});
  factory _HairModel.fromJson(Map<String, dynamic> json) => _$HairModelFromJson(json);

@override final  String color;
@override final  String type;

/// Create a copy of HairModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HairModelCopyWith<_HairModel> get copyWith => __$HairModelCopyWithImpl<_HairModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HairModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HairModel&&(identical(other.color, color) || other.color == color)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,color,type);

@override
String toString() {
  return 'HairModel(color: $color, type: $type)';
}


}

/// @nodoc
abstract mixin class _$HairModelCopyWith<$Res> implements $HairModelCopyWith<$Res> {
  factory _$HairModelCopyWith(_HairModel value, $Res Function(_HairModel) _then) = __$HairModelCopyWithImpl;
@override @useResult
$Res call({
 String color, String type
});




}
/// @nodoc
class __$HairModelCopyWithImpl<$Res>
    implements _$HairModelCopyWith<$Res> {
  __$HairModelCopyWithImpl(this._self, this._then);

  final _HairModel _self;
  final $Res Function(_HairModel) _then;

/// Create a copy of HairModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? color = null,Object? type = null,}) {
  return _then(_HairModel(
color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
