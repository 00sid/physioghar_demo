// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_note_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SessionNoteModel {

 String? get patientId; String? get noteId; DateTime? get date; String? get sessionNote; String? get exercise; String? get nextSession;
/// Create a copy of SessionNoteModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionNoteModelCopyWith<SessionNoteModel> get copyWith => _$SessionNoteModelCopyWithImpl<SessionNoteModel>(this as SessionNoteModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionNoteModel&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.noteId, noteId) || other.noteId == noteId)&&(identical(other.date, date) || other.date == date)&&(identical(other.sessionNote, sessionNote) || other.sessionNote == sessionNote)&&(identical(other.exercise, exercise) || other.exercise == exercise)&&(identical(other.nextSession, nextSession) || other.nextSession == nextSession));
}


@override
int get hashCode => Object.hash(runtimeType,patientId,noteId,date,sessionNote,exercise,nextSession);

@override
String toString() {
  return 'SessionNoteModel(patientId: $patientId, noteId: $noteId, date: $date, sessionNote: $sessionNote, exercise: $exercise, nextSession: $nextSession)';
}


}

/// @nodoc
abstract mixin class $SessionNoteModelCopyWith<$Res>  {
  factory $SessionNoteModelCopyWith(SessionNoteModel value, $Res Function(SessionNoteModel) _then) = _$SessionNoteModelCopyWithImpl;
@useResult
$Res call({
 String? patientId, String? noteId, DateTime? date, String? sessionNote, String? exercise, String? nextSession
});




}
/// @nodoc
class _$SessionNoteModelCopyWithImpl<$Res>
    implements $SessionNoteModelCopyWith<$Res> {
  _$SessionNoteModelCopyWithImpl(this._self, this._then);

  final SessionNoteModel _self;
  final $Res Function(SessionNoteModel) _then;

/// Create a copy of SessionNoteModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? patientId = freezed,Object? noteId = freezed,Object? date = freezed,Object? sessionNote = freezed,Object? exercise = freezed,Object? nextSession = freezed,}) {
  return _then(_self.copyWith(
patientId: freezed == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String?,noteId: freezed == noteId ? _self.noteId : noteId // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,sessionNote: freezed == sessionNote ? _self.sessionNote : sessionNote // ignore: cast_nullable_to_non_nullable
as String?,exercise: freezed == exercise ? _self.exercise : exercise // ignore: cast_nullable_to_non_nullable
as String?,nextSession: freezed == nextSession ? _self.nextSession : nextSession // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SessionNoteModel].
extension SessionNoteModelPatterns on SessionNoteModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SessionNoteModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionNoteModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SessionNoteModel value)  $default,){
final _that = this;
switch (_that) {
case _SessionNoteModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SessionNoteModel value)?  $default,){
final _that = this;
switch (_that) {
case _SessionNoteModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? patientId,  String? noteId,  DateTime? date,  String? sessionNote,  String? exercise,  String? nextSession)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SessionNoteModel() when $default != null:
return $default(_that.patientId,_that.noteId,_that.date,_that.sessionNote,_that.exercise,_that.nextSession);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? patientId,  String? noteId,  DateTime? date,  String? sessionNote,  String? exercise,  String? nextSession)  $default,) {final _that = this;
switch (_that) {
case _SessionNoteModel():
return $default(_that.patientId,_that.noteId,_that.date,_that.sessionNote,_that.exercise,_that.nextSession);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? patientId,  String? noteId,  DateTime? date,  String? sessionNote,  String? exercise,  String? nextSession)?  $default,) {final _that = this;
switch (_that) {
case _SessionNoteModel() when $default != null:
return $default(_that.patientId,_that.noteId,_that.date,_that.sessionNote,_that.exercise,_that.nextSession);case _:
  return null;

}
}

}

/// @nodoc


class _SessionNoteModel implements SessionNoteModel {
   _SessionNoteModel({this.patientId, this.noteId, this.date, this.sessionNote, this.exercise, this.nextSession});
  

@override final  String? patientId;
@override final  String? noteId;
@override final  DateTime? date;
@override final  String? sessionNote;
@override final  String? exercise;
@override final  String? nextSession;

/// Create a copy of SessionNoteModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionNoteModelCopyWith<_SessionNoteModel> get copyWith => __$SessionNoteModelCopyWithImpl<_SessionNoteModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionNoteModel&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.noteId, noteId) || other.noteId == noteId)&&(identical(other.date, date) || other.date == date)&&(identical(other.sessionNote, sessionNote) || other.sessionNote == sessionNote)&&(identical(other.exercise, exercise) || other.exercise == exercise)&&(identical(other.nextSession, nextSession) || other.nextSession == nextSession));
}


@override
int get hashCode => Object.hash(runtimeType,patientId,noteId,date,sessionNote,exercise,nextSession);

@override
String toString() {
  return 'SessionNoteModel(patientId: $patientId, noteId: $noteId, date: $date, sessionNote: $sessionNote, exercise: $exercise, nextSession: $nextSession)';
}


}

/// @nodoc
abstract mixin class _$SessionNoteModelCopyWith<$Res> implements $SessionNoteModelCopyWith<$Res> {
  factory _$SessionNoteModelCopyWith(_SessionNoteModel value, $Res Function(_SessionNoteModel) _then) = __$SessionNoteModelCopyWithImpl;
@override @useResult
$Res call({
 String? patientId, String? noteId, DateTime? date, String? sessionNote, String? exercise, String? nextSession
});




}
/// @nodoc
class __$SessionNoteModelCopyWithImpl<$Res>
    implements _$SessionNoteModelCopyWith<$Res> {
  __$SessionNoteModelCopyWithImpl(this._self, this._then);

  final _SessionNoteModel _self;
  final $Res Function(_SessionNoteModel) _then;

/// Create a copy of SessionNoteModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? patientId = freezed,Object? noteId = freezed,Object? date = freezed,Object? sessionNote = freezed,Object? exercise = freezed,Object? nextSession = freezed,}) {
  return _then(_SessionNoteModel(
patientId: freezed == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String?,noteId: freezed == noteId ? _self.noteId : noteId // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,sessionNote: freezed == sessionNote ? _self.sessionNote : sessionNote // ignore: cast_nullable_to_non_nullable
as String?,exercise: freezed == exercise ? _self.exercise : exercise // ignore: cast_nullable_to_non_nullable
as String?,nextSession: freezed == nextSession ? _self.nextSession : nextSession // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
