// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_tab_bar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ScheduleTabBarState {

 ScheduleTabBarEnum get selectedTab;
/// Create a copy of ScheduleTabBarState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleTabBarStateCopyWith<ScheduleTabBarState> get copyWith => _$ScheduleTabBarStateCopyWithImpl<ScheduleTabBarState>(this as ScheduleTabBarState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduleTabBarState&&(identical(other.selectedTab, selectedTab) || other.selectedTab == selectedTab));
}


@override
int get hashCode => Object.hash(runtimeType,selectedTab);

@override
String toString() {
  return 'ScheduleTabBarState(selectedTab: $selectedTab)';
}


}

/// @nodoc
abstract mixin class $ScheduleTabBarStateCopyWith<$Res>  {
  factory $ScheduleTabBarStateCopyWith(ScheduleTabBarState value, $Res Function(ScheduleTabBarState) _then) = _$ScheduleTabBarStateCopyWithImpl;
@useResult
$Res call({
 ScheduleTabBarEnum selectedTab
});




}
/// @nodoc
class _$ScheduleTabBarStateCopyWithImpl<$Res>
    implements $ScheduleTabBarStateCopyWith<$Res> {
  _$ScheduleTabBarStateCopyWithImpl(this._self, this._then);

  final ScheduleTabBarState _self;
  final $Res Function(ScheduleTabBarState) _then;

/// Create a copy of ScheduleTabBarState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedTab = null,}) {
  return _then(_self.copyWith(
selectedTab: null == selectedTab ? _self.selectedTab : selectedTab // ignore: cast_nullable_to_non_nullable
as ScheduleTabBarEnum,
  ));
}

}


/// Adds pattern-matching-related methods to [ScheduleTabBarState].
extension ScheduleTabBarStatePatterns on ScheduleTabBarState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScheduleTabBarState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScheduleTabBarState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScheduleTabBarState value)  $default,){
final _that = this;
switch (_that) {
case _ScheduleTabBarState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScheduleTabBarState value)?  $default,){
final _that = this;
switch (_that) {
case _ScheduleTabBarState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ScheduleTabBarEnum selectedTab)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScheduleTabBarState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ScheduleTabBarEnum selectedTab)  $default,) {final _that = this;
switch (_that) {
case _ScheduleTabBarState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ScheduleTabBarEnum selectedTab)?  $default,) {final _that = this;
switch (_that) {
case _ScheduleTabBarState() when $default != null:
return $default(_that.selectedTab);case _:
  return null;

}
}

}

/// @nodoc


class _ScheduleTabBarState implements ScheduleTabBarState {
   _ScheduleTabBarState({this.selectedTab = ScheduleTabBarEnum.schedule});
  

@override@JsonKey() final  ScheduleTabBarEnum selectedTab;

/// Create a copy of ScheduleTabBarState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleTabBarStateCopyWith<_ScheduleTabBarState> get copyWith => __$ScheduleTabBarStateCopyWithImpl<_ScheduleTabBarState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScheduleTabBarState&&(identical(other.selectedTab, selectedTab) || other.selectedTab == selectedTab));
}


@override
int get hashCode => Object.hash(runtimeType,selectedTab);

@override
String toString() {
  return 'ScheduleTabBarState(selectedTab: $selectedTab)';
}


}

/// @nodoc
abstract mixin class _$ScheduleTabBarStateCopyWith<$Res> implements $ScheduleTabBarStateCopyWith<$Res> {
  factory _$ScheduleTabBarStateCopyWith(_ScheduleTabBarState value, $Res Function(_ScheduleTabBarState) _then) = __$ScheduleTabBarStateCopyWithImpl;
@override @useResult
$Res call({
 ScheduleTabBarEnum selectedTab
});




}
/// @nodoc
class __$ScheduleTabBarStateCopyWithImpl<$Res>
    implements _$ScheduleTabBarStateCopyWith<$Res> {
  __$ScheduleTabBarStateCopyWithImpl(this._self, this._then);

  final _ScheduleTabBarState _self;
  final $Res Function(_ScheduleTabBarState) _then;

/// Create a copy of ScheduleTabBarState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedTab = null,}) {
  return _then(_ScheduleTabBarState(
selectedTab: null == selectedTab ? _self.selectedTab : selectedTab // ignore: cast_nullable_to_non_nullable
as ScheduleTabBarEnum,
  ));
}


}

// dart format on
