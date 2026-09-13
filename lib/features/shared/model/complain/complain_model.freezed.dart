// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complain_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ComplainModel {

 String? get category; String? get subject; String? get description; String? get date; String? get status;
/// Create a copy of ComplainModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComplainModelCopyWith<ComplainModel> get copyWith => _$ComplainModelCopyWithImpl<ComplainModel>(this as ComplainModel, _$identity);

  /// Serializes this ComplainModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ComplainModel&&(identical(other.category, category) || other.category == category)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.description, description) || other.description == description)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,subject,description,date,status);

@override
String toString() {
  return 'ComplainModel(category: $category, subject: $subject, description: $description, date: $date, status: $status)';
}


}

/// @nodoc
abstract mixin class $ComplainModelCopyWith<$Res>  {
  factory $ComplainModelCopyWith(ComplainModel value, $Res Function(ComplainModel) _then) = _$ComplainModelCopyWithImpl;
@useResult
$Res call({
 String? category, String? subject, String? description, String? date, String? status
});




}
/// @nodoc
class _$ComplainModelCopyWithImpl<$Res>
    implements $ComplainModelCopyWith<$Res> {
  _$ComplainModelCopyWithImpl(this._self, this._then);

  final ComplainModel _self;
  final $Res Function(ComplainModel) _then;

/// Create a copy of ComplainModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = freezed,Object? subject = freezed,Object? description = freezed,Object? date = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ComplainModel].
extension ComplainModelPatterns on ComplainModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ComplainModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ComplainModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ComplainModel value)  $default,){
final _that = this;
switch (_that) {
case _ComplainModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ComplainModel value)?  $default,){
final _that = this;
switch (_that) {
case _ComplainModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? category,  String? subject,  String? description,  String? date,  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ComplainModel() when $default != null:
return $default(_that.category,_that.subject,_that.description,_that.date,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? category,  String? subject,  String? description,  String? date,  String? status)  $default,) {final _that = this;
switch (_that) {
case _ComplainModel():
return $default(_that.category,_that.subject,_that.description,_that.date,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? category,  String? subject,  String? description,  String? date,  String? status)?  $default,) {final _that = this;
switch (_that) {
case _ComplainModel() when $default != null:
return $default(_that.category,_that.subject,_that.description,_that.date,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ComplainModel implements ComplainModel {
   _ComplainModel({this.category, this.subject, this.description, this.date, this.status});
  factory _ComplainModel.fromJson(Map<String, dynamic> json) => _$ComplainModelFromJson(json);

@override final  String? category;
@override final  String? subject;
@override final  String? description;
@override final  String? date;
@override final  String? status;

/// Create a copy of ComplainModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComplainModelCopyWith<_ComplainModel> get copyWith => __$ComplainModelCopyWithImpl<_ComplainModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ComplainModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ComplainModel&&(identical(other.category, category) || other.category == category)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.description, description) || other.description == description)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,subject,description,date,status);

@override
String toString() {
  return 'ComplainModel(category: $category, subject: $subject, description: $description, date: $date, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ComplainModelCopyWith<$Res> implements $ComplainModelCopyWith<$Res> {
  factory _$ComplainModelCopyWith(_ComplainModel value, $Res Function(_ComplainModel) _then) = __$ComplainModelCopyWithImpl;
@override @useResult
$Res call({
 String? category, String? subject, String? description, String? date, String? status
});




}
/// @nodoc
class __$ComplainModelCopyWithImpl<$Res>
    implements _$ComplainModelCopyWith<$Res> {
  __$ComplainModelCopyWithImpl(this._self, this._then);

  final _ComplainModel _self;
  final $Res Function(_ComplainModel) _then;

/// Create a copy of ComplainModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = freezed,Object? subject = freezed,Object? description = freezed,Object? date = freezed,Object? status = freezed,}) {
  return _then(_ComplainModel(
category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
