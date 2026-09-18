// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PatientModel {

 String? get id; String? get fullName; int? get age; String? get email; String? get phone; String? get gender; String? get condition; String? get treatment; DateTime? get lastSession;
/// Create a copy of PatientModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatientModelCopyWith<PatientModel> get copyWith => _$PatientModelCopyWithImpl<PatientModel>(this as PatientModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatientModel&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.age, age) || other.age == age)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.treatment, treatment) || other.treatment == treatment)&&(identical(other.lastSession, lastSession) || other.lastSession == lastSession));
}


@override
int get hashCode => Object.hash(runtimeType,id,fullName,age,email,phone,gender,condition,treatment,lastSession);

@override
String toString() {
  return 'PatientModel(id: $id, fullName: $fullName, age: $age, email: $email, phone: $phone, gender: $gender, condition: $condition, treatment: $treatment, lastSession: $lastSession)';
}


}

/// @nodoc
abstract mixin class $PatientModelCopyWith<$Res>  {
  factory $PatientModelCopyWith(PatientModel value, $Res Function(PatientModel) _then) = _$PatientModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? fullName, int? age, String? email, String? phone, String? gender, String? condition, String? treatment, DateTime? lastSession
});




}
/// @nodoc
class _$PatientModelCopyWithImpl<$Res>
    implements $PatientModelCopyWith<$Res> {
  _$PatientModelCopyWithImpl(this._self, this._then);

  final PatientModel _self;
  final $Res Function(PatientModel) _then;

/// Create a copy of PatientModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? fullName = freezed,Object? age = freezed,Object? email = freezed,Object? phone = freezed,Object? gender = freezed,Object? condition = freezed,Object? treatment = freezed,Object? lastSession = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String?,treatment: freezed == treatment ? _self.treatment : treatment // ignore: cast_nullable_to_non_nullable
as String?,lastSession: freezed == lastSession ? _self.lastSession : lastSession // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [PatientModel].
extension PatientModelPatterns on PatientModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatientModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatientModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatientModel value)  $default,){
final _that = this;
switch (_that) {
case _PatientModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatientModel value)?  $default,){
final _that = this;
switch (_that) {
case _PatientModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? fullName,  int? age,  String? email,  String? phone,  String? gender,  String? condition,  String? treatment,  DateTime? lastSession)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatientModel() when $default != null:
return $default(_that.id,_that.fullName,_that.age,_that.email,_that.phone,_that.gender,_that.condition,_that.treatment,_that.lastSession);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? fullName,  int? age,  String? email,  String? phone,  String? gender,  String? condition,  String? treatment,  DateTime? lastSession)  $default,) {final _that = this;
switch (_that) {
case _PatientModel():
return $default(_that.id,_that.fullName,_that.age,_that.email,_that.phone,_that.gender,_that.condition,_that.treatment,_that.lastSession);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? fullName,  int? age,  String? email,  String? phone,  String? gender,  String? condition,  String? treatment,  DateTime? lastSession)?  $default,) {final _that = this;
switch (_that) {
case _PatientModel() when $default != null:
return $default(_that.id,_that.fullName,_that.age,_that.email,_that.phone,_that.gender,_that.condition,_that.treatment,_that.lastSession);case _:
  return null;

}
}

}

/// @nodoc


class _PatientModel implements PatientModel {
   _PatientModel({this.id, this.fullName, this.age, this.email, this.phone, this.gender, this.condition, this.treatment, this.lastSession});
  

@override final  String? id;
@override final  String? fullName;
@override final  int? age;
@override final  String? email;
@override final  String? phone;
@override final  String? gender;
@override final  String? condition;
@override final  String? treatment;
@override final  DateTime? lastSession;

/// Create a copy of PatientModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatientModelCopyWith<_PatientModel> get copyWith => __$PatientModelCopyWithImpl<_PatientModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatientModel&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.age, age) || other.age == age)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.treatment, treatment) || other.treatment == treatment)&&(identical(other.lastSession, lastSession) || other.lastSession == lastSession));
}


@override
int get hashCode => Object.hash(runtimeType,id,fullName,age,email,phone,gender,condition,treatment,lastSession);

@override
String toString() {
  return 'PatientModel(id: $id, fullName: $fullName, age: $age, email: $email, phone: $phone, gender: $gender, condition: $condition, treatment: $treatment, lastSession: $lastSession)';
}


}

/// @nodoc
abstract mixin class _$PatientModelCopyWith<$Res> implements $PatientModelCopyWith<$Res> {
  factory _$PatientModelCopyWith(_PatientModel value, $Res Function(_PatientModel) _then) = __$PatientModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? fullName, int? age, String? email, String? phone, String? gender, String? condition, String? treatment, DateTime? lastSession
});




}
/// @nodoc
class __$PatientModelCopyWithImpl<$Res>
    implements _$PatientModelCopyWith<$Res> {
  __$PatientModelCopyWithImpl(this._self, this._then);

  final _PatientModel _self;
  final $Res Function(_PatientModel) _then;

/// Create a copy of PatientModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? fullName = freezed,Object? age = freezed,Object? email = freezed,Object? phone = freezed,Object? gender = freezed,Object? condition = freezed,Object? treatment = freezed,Object? lastSession = freezed,}) {
  return _then(_PatientModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String?,treatment: freezed == treatment ? _self.treatment : treatment // ignore: cast_nullable_to_non_nullable
as String?,lastSession: freezed == lastSession ? _self.lastSession : lastSession // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
