// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_tab_bar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SessionTabBarState {

 SessionTabBarEnum get selectedTab;
/// Create a copy of SessionTabBarState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionTabBarStateCopyWith<SessionTabBarState> get copyWith => _$SessionTabBarStateCopyWithImpl<SessionTabBarState>(this as SessionTabBarState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionTabBarState&&(identical(other.selectedTab, selectedTab) || other.selectedTab == selectedTab));
}


@override
int get hashCode => Object.hash(runtimeType,selectedTab);

@override
String toString() {
  return 'SessionTabBarState(selectedTab: $selectedTab)';
}


}

/// @nodoc
abstract mixin class $SessionTabBarStateCopyWith<$Res>  {
  factory $SessionTabBarStateCopyWith(SessionTabBarState value, $Res Function(SessionTabBarState) _then) = _$SessionTabBarStateCopyWithImpl;
@useResult
$Res call({
 SessionTabBarEnum selectedTab
});




}
/// @nodoc
class _$SessionTabBarStateCopyWithImpl<$Res>
    implements $SessionTabBarStateCopyWith<$Res> {
  _$SessionTabBarStateCopyWithImpl(this._self, this._then);

  final SessionTabBarState _self;
  final $Res Function(SessionTabBarState) _then;

/// Create a copy of SessionTabBarState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedTab = null,}) {
  return _then(_self.copyWith(
selectedTab: null == selectedTab ? _self.selectedTab : selectedTab // ignore: cast_nullable_to_non_nullable
as SessionTabBarEnum,
  ));
}

}


/// Adds pattern-matching-related methods to [SessionTabBarState].
extension SessionTabBarStatePatterns on SessionTabBarState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SessionTabBarState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionTabBarState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SessionTabBarState value)  $default,){
final _that = this;
switch (_that) {
case _SessionTabBarState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SessionTabBarState value)?  $default,){
final _that = this;
switch (_that) {
case _SessionTabBarState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SessionTabBarEnum selectedTab)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SessionTabBarState() when $default != null:
return $default(_that.selectedTab);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SessionTabBarEnum selectedTab)  $default,) {final _that = this;
switch (_that) {
case _SessionTabBarState():
return $default(_that.selectedTab);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SessionTabBarEnum selectedTab)?  $default,) {final _that = this;
switch (_that) {
case _SessionTabBarState() when $default != null:
return $default(_that.selectedTab);case _:
  return null;

}
}

}

/// @nodoc


class _SessionTabBarState implements SessionTabBarState {
   _SessionTabBarState({this.selectedTab = SessionTabBarEnum.requests});
  

@override@JsonKey() final  SessionTabBarEnum selectedTab;

/// Create a copy of SessionTabBarState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionTabBarStateCopyWith<_SessionTabBarState> get copyWith => __$SessionTabBarStateCopyWithImpl<_SessionTabBarState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionTabBarState&&(identical(other.selectedTab, selectedTab) || other.selectedTab == selectedTab));
}


@override
int get hashCode => Object.hash(runtimeType,selectedTab);

@override
String toString() {
  return 'SessionTabBarState(selectedTab: $selectedTab)';
}


}

/// @nodoc
abstract mixin class _$SessionTabBarStateCopyWith<$Res> implements $SessionTabBarStateCopyWith<$Res> {
  factory _$SessionTabBarStateCopyWith(_SessionTabBarState value, $Res Function(_SessionTabBarState) _then) = __$SessionTabBarStateCopyWithImpl;
@override @useResult
$Res call({
 SessionTabBarEnum selectedTab
});




}
/// @nodoc
class __$SessionTabBarStateCopyWithImpl<$Res>
    implements _$SessionTabBarStateCopyWith<$Res> {
  __$SessionTabBarStateCopyWithImpl(this._self, this._then);

  final _SessionTabBarState _self;
  final $Res Function(_SessionTabBarState) _then;

/// Create a copy of SessionTabBarState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedTab = null,}) {
  return _then(_SessionTabBarState(
selectedTab: null == selectedTab ? _self.selectedTab : selectedTab // ignore: cast_nullable_to_non_nullable
as SessionTabBarEnum,
  ));
}


}

// dart format on
