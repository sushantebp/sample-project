// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel {

 int get id; String get firstName; String get lastName; String get maidenName; int get age; String get gender; String get email; String get phone; String get username; String get password; String get birthDate; String get image; String get bloodGroup; double get height; double get weight; String get eyeColor; HairModel get hair; String get ip; AddressModel get address; String get macAddress; String get university; BankModel get bank; CompanyModel get company; String get ein; String get ssn; String get userAgent; CryptoModel get crypto; String get role;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.maidenName, maidenName) || other.maidenName == maidenName)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.image, image) || other.image == image)&&(identical(other.bloodGroup, bloodGroup) || other.bloodGroup == bloodGroup)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.eyeColor, eyeColor) || other.eyeColor == eyeColor)&&(identical(other.hair, hair) || other.hair == hair)&&(identical(other.ip, ip) || other.ip == ip)&&(identical(other.address, address) || other.address == address)&&(identical(other.macAddress, macAddress) || other.macAddress == macAddress)&&(identical(other.university, university) || other.university == university)&&(identical(other.bank, bank) || other.bank == bank)&&(identical(other.company, company) || other.company == company)&&(identical(other.ein, ein) || other.ein == ein)&&(identical(other.ssn, ssn) || other.ssn == ssn)&&(identical(other.userAgent, userAgent) || other.userAgent == userAgent)&&(identical(other.crypto, crypto) || other.crypto == crypto)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,firstName,lastName,maidenName,age,gender,email,phone,username,password,birthDate,image,bloodGroup,height,weight,eyeColor,hair,ip,address,macAddress,university,bank,company,ein,ssn,userAgent,crypto,role]);

@override
String toString() {
  return 'UserModel(id: $id, firstName: $firstName, lastName: $lastName, maidenName: $maidenName, age: $age, gender: $gender, email: $email, phone: $phone, username: $username, password: $password, birthDate: $birthDate, image: $image, bloodGroup: $bloodGroup, height: $height, weight: $weight, eyeColor: $eyeColor, hair: $hair, ip: $ip, address: $address, macAddress: $macAddress, university: $university, bank: $bank, company: $company, ein: $ein, ssn: $ssn, userAgent: $userAgent, crypto: $crypto, role: $role)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
 int id, String firstName, String lastName, String maidenName, int age, String gender, String email, String phone, String username, String password, String birthDate, String image, String bloodGroup, double height, double weight, String eyeColor, HairModel hair, String ip, AddressModel address, String macAddress, String university, BankModel bank, CompanyModel company, String ein, String ssn, String userAgent, CryptoModel crypto, String role
});


$HairModelCopyWith<$Res> get hair;$AddressModelCopyWith<$Res> get address;$BankModelCopyWith<$Res> get bank;$CompanyModelCopyWith<$Res> get company;$CryptoModelCopyWith<$Res> get crypto;

}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? maidenName = null,Object? age = null,Object? gender = null,Object? email = null,Object? phone = null,Object? username = null,Object? password = null,Object? birthDate = null,Object? image = null,Object? bloodGroup = null,Object? height = null,Object? weight = null,Object? eyeColor = null,Object? hair = null,Object? ip = null,Object? address = null,Object? macAddress = null,Object? university = null,Object? bank = null,Object? company = null,Object? ein = null,Object? ssn = null,Object? userAgent = null,Object? crypto = null,Object? role = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,maidenName: null == maidenName ? _self.maidenName : maidenName // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,bloodGroup: null == bloodGroup ? _self.bloodGroup : bloodGroup // ignore: cast_nullable_to_non_nullable
as String,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,eyeColor: null == eyeColor ? _self.eyeColor : eyeColor // ignore: cast_nullable_to_non_nullable
as String,hair: null == hair ? _self.hair : hair // ignore: cast_nullable_to_non_nullable
as HairModel,ip: null == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as AddressModel,macAddress: null == macAddress ? _self.macAddress : macAddress // ignore: cast_nullable_to_non_nullable
as String,university: null == university ? _self.university : university // ignore: cast_nullable_to_non_nullable
as String,bank: null == bank ? _self.bank : bank // ignore: cast_nullable_to_non_nullable
as BankModel,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as CompanyModel,ein: null == ein ? _self.ein : ein // ignore: cast_nullable_to_non_nullable
as String,ssn: null == ssn ? _self.ssn : ssn // ignore: cast_nullable_to_non_nullable
as String,userAgent: null == userAgent ? _self.userAgent : userAgent // ignore: cast_nullable_to_non_nullable
as String,crypto: null == crypto ? _self.crypto : crypto // ignore: cast_nullable_to_non_nullable
as CryptoModel,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HairModelCopyWith<$Res> get hair {
  
  return $HairModelCopyWith<$Res>(_self.hair, (value) {
    return _then(_self.copyWith(hair: value));
  });
}/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressModelCopyWith<$Res> get address {
  
  return $AddressModelCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BankModelCopyWith<$Res> get bank {
  
  return $BankModelCopyWith<$Res>(_self.bank, (value) {
    return _then(_self.copyWith(bank: value));
  });
}/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyModelCopyWith<$Res> get company {
  
  return $CompanyModelCopyWith<$Res>(_self.company, (value) {
    return _then(_self.copyWith(company: value));
  });
}/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CryptoModelCopyWith<$Res> get crypto {
  
  return $CryptoModelCopyWith<$Res>(_self.crypto, (value) {
    return _then(_self.copyWith(crypto: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String firstName,  String lastName,  String maidenName,  int age,  String gender,  String email,  String phone,  String username,  String password,  String birthDate,  String image,  String bloodGroup,  double height,  double weight,  String eyeColor,  HairModel hair,  String ip,  AddressModel address,  String macAddress,  String university,  BankModel bank,  CompanyModel company,  String ein,  String ssn,  String userAgent,  CryptoModel crypto,  String role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.maidenName,_that.age,_that.gender,_that.email,_that.phone,_that.username,_that.password,_that.birthDate,_that.image,_that.bloodGroup,_that.height,_that.weight,_that.eyeColor,_that.hair,_that.ip,_that.address,_that.macAddress,_that.university,_that.bank,_that.company,_that.ein,_that.ssn,_that.userAgent,_that.crypto,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String firstName,  String lastName,  String maidenName,  int age,  String gender,  String email,  String phone,  String username,  String password,  String birthDate,  String image,  String bloodGroup,  double height,  double weight,  String eyeColor,  HairModel hair,  String ip,  AddressModel address,  String macAddress,  String university,  BankModel bank,  CompanyModel company,  String ein,  String ssn,  String userAgent,  CryptoModel crypto,  String role)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.id,_that.firstName,_that.lastName,_that.maidenName,_that.age,_that.gender,_that.email,_that.phone,_that.username,_that.password,_that.birthDate,_that.image,_that.bloodGroup,_that.height,_that.weight,_that.eyeColor,_that.hair,_that.ip,_that.address,_that.macAddress,_that.university,_that.bank,_that.company,_that.ein,_that.ssn,_that.userAgent,_that.crypto,_that.role);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String firstName,  String lastName,  String maidenName,  int age,  String gender,  String email,  String phone,  String username,  String password,  String birthDate,  String image,  String bloodGroup,  double height,  double weight,  String eyeColor,  HairModel hair,  String ip,  AddressModel address,  String macAddress,  String university,  BankModel bank,  CompanyModel company,  String ein,  String ssn,  String userAgent,  CryptoModel crypto,  String role)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.maidenName,_that.age,_that.gender,_that.email,_that.phone,_that.username,_that.password,_that.birthDate,_that.image,_that.bloodGroup,_that.height,_that.weight,_that.eyeColor,_that.hair,_that.ip,_that.address,_that.macAddress,_that.university,_that.bank,_that.company,_that.ein,_that.ssn,_that.userAgent,_that.crypto,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModel implements UserModel {
  const _UserModel({required this.id, required this.firstName, required this.lastName, required this.maidenName, required this.age, required this.gender, required this.email, required this.phone, required this.username, required this.password, required this.birthDate, required this.image, required this.bloodGroup, required this.height, required this.weight, required this.eyeColor, required this.hair, required this.ip, required this.address, required this.macAddress, required this.university, required this.bank, required this.company, required this.ein, required this.ssn, required this.userAgent, required this.crypto, required this.role});
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override final  int id;
@override final  String firstName;
@override final  String lastName;
@override final  String maidenName;
@override final  int age;
@override final  String gender;
@override final  String email;
@override final  String phone;
@override final  String username;
@override final  String password;
@override final  String birthDate;
@override final  String image;
@override final  String bloodGroup;
@override final  double height;
@override final  double weight;
@override final  String eyeColor;
@override final  HairModel hair;
@override final  String ip;
@override final  AddressModel address;
@override final  String macAddress;
@override final  String university;
@override final  BankModel bank;
@override final  CompanyModel company;
@override final  String ein;
@override final  String ssn;
@override final  String userAgent;
@override final  CryptoModel crypto;
@override final  String role;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.maidenName, maidenName) || other.maidenName == maidenName)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.image, image) || other.image == image)&&(identical(other.bloodGroup, bloodGroup) || other.bloodGroup == bloodGroup)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.eyeColor, eyeColor) || other.eyeColor == eyeColor)&&(identical(other.hair, hair) || other.hair == hair)&&(identical(other.ip, ip) || other.ip == ip)&&(identical(other.address, address) || other.address == address)&&(identical(other.macAddress, macAddress) || other.macAddress == macAddress)&&(identical(other.university, university) || other.university == university)&&(identical(other.bank, bank) || other.bank == bank)&&(identical(other.company, company) || other.company == company)&&(identical(other.ein, ein) || other.ein == ein)&&(identical(other.ssn, ssn) || other.ssn == ssn)&&(identical(other.userAgent, userAgent) || other.userAgent == userAgent)&&(identical(other.crypto, crypto) || other.crypto == crypto)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,firstName,lastName,maidenName,age,gender,email,phone,username,password,birthDate,image,bloodGroup,height,weight,eyeColor,hair,ip,address,macAddress,university,bank,company,ein,ssn,userAgent,crypto,role]);

@override
String toString() {
  return 'UserModel(id: $id, firstName: $firstName, lastName: $lastName, maidenName: $maidenName, age: $age, gender: $gender, email: $email, phone: $phone, username: $username, password: $password, birthDate: $birthDate, image: $image, bloodGroup: $bloodGroup, height: $height, weight: $weight, eyeColor: $eyeColor, hair: $hair, ip: $ip, address: $address, macAddress: $macAddress, university: $university, bank: $bank, company: $company, ein: $ein, ssn: $ssn, userAgent: $userAgent, crypto: $crypto, role: $role)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String firstName, String lastName, String maidenName, int age, String gender, String email, String phone, String username, String password, String birthDate, String image, String bloodGroup, double height, double weight, String eyeColor, HairModel hair, String ip, AddressModel address, String macAddress, String university, BankModel bank, CompanyModel company, String ein, String ssn, String userAgent, CryptoModel crypto, String role
});


@override $HairModelCopyWith<$Res> get hair;@override $AddressModelCopyWith<$Res> get address;@override $BankModelCopyWith<$Res> get bank;@override $CompanyModelCopyWith<$Res> get company;@override $CryptoModelCopyWith<$Res> get crypto;

}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? maidenName = null,Object? age = null,Object? gender = null,Object? email = null,Object? phone = null,Object? username = null,Object? password = null,Object? birthDate = null,Object? image = null,Object? bloodGroup = null,Object? height = null,Object? weight = null,Object? eyeColor = null,Object? hair = null,Object? ip = null,Object? address = null,Object? macAddress = null,Object? university = null,Object? bank = null,Object? company = null,Object? ein = null,Object? ssn = null,Object? userAgent = null,Object? crypto = null,Object? role = null,}) {
  return _then(_UserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,maidenName: null == maidenName ? _self.maidenName : maidenName // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,bloodGroup: null == bloodGroup ? _self.bloodGroup : bloodGroup // ignore: cast_nullable_to_non_nullable
as String,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,eyeColor: null == eyeColor ? _self.eyeColor : eyeColor // ignore: cast_nullable_to_non_nullable
as String,hair: null == hair ? _self.hair : hair // ignore: cast_nullable_to_non_nullable
as HairModel,ip: null == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as AddressModel,macAddress: null == macAddress ? _self.macAddress : macAddress // ignore: cast_nullable_to_non_nullable
as String,university: null == university ? _self.university : university // ignore: cast_nullable_to_non_nullable
as String,bank: null == bank ? _self.bank : bank // ignore: cast_nullable_to_non_nullable
as BankModel,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as CompanyModel,ein: null == ein ? _self.ein : ein // ignore: cast_nullable_to_non_nullable
as String,ssn: null == ssn ? _self.ssn : ssn // ignore: cast_nullable_to_non_nullable
as String,userAgent: null == userAgent ? _self.userAgent : userAgent // ignore: cast_nullable_to_non_nullable
as String,crypto: null == crypto ? _self.crypto : crypto // ignore: cast_nullable_to_non_nullable
as CryptoModel,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HairModelCopyWith<$Res> get hair {
  
  return $HairModelCopyWith<$Res>(_self.hair, (value) {
    return _then(_self.copyWith(hair: value));
  });
}/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressModelCopyWith<$Res> get address {
  
  return $AddressModelCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BankModelCopyWith<$Res> get bank {
  
  return $BankModelCopyWith<$Res>(_self.bank, (value) {
    return _then(_self.copyWith(bank: value));
  });
}/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyModelCopyWith<$Res> get company {
  
  return $CompanyModelCopyWith<$Res>(_self.company, (value) {
    return _then(_self.copyWith(company: value));
  });
}/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CryptoModelCopyWith<$Res> get crypto {
  
  return $CryptoModelCopyWith<$Res>(_self.crypto, (value) {
    return _then(_self.copyWith(crypto: value));
  });
}
}

// dart format on
