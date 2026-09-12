// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_nav_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeNavState {

 HomeNavEnum get selectedNav;
/// Create a copy of HomeNavState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeNavStateCopyWith<HomeNavState> get copyWith => _$HomeNavStateCopyWithImpl<HomeNavState>(this as HomeNavState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeNavState&&(identical(other.selectedNav, selectedNav) || other.selectedNav == selectedNav));
}


@override
int get hashCode => Object.hash(runtimeType,selectedNav);

@override
String toString() {
  return 'HomeNavState(selectedNav: $selectedNav)';
}


}

/// @nodoc
abstract mixin class $HomeNavStateCopyWith<$Res>  {
  factory $HomeNavStateCopyWith(HomeNavState value, $Res Function(HomeNavState) _then) = _$HomeNavStateCopyWithImpl;
@useResult
$Res call({
 HomeNavEnum selectedNav
});




}
/// @nodoc
class _$HomeNavStateCopyWithImpl<$Res>
    implements $HomeNavStateCopyWith<$Res> {
  _$HomeNavStateCopyWithImpl(this._self, this._then);

  final HomeNavState _self;
  final $Res Function(HomeNavState) _then;

/// Create a copy of HomeNavState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedNav = null,}) {
  return _then(_self.copyWith(
selectedNav: null == selectedNav ? _self.selectedNav : selectedNav // ignore: cast_nullable_to_non_nullable
as HomeNavEnum,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeNavState].
extension HomeNavStatePatterns on HomeNavState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeNavState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeNavState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeNavState value)  $default,){
final _that = this;
switch (_that) {
case _HomeNavState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeNavState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeNavState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( HomeNavEnum selectedNav)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeNavState() when $default != null:
return $default(_that.selectedNav);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( HomeNavEnum selectedNav)  $default,) {final _that = this;
switch (_that) {
case _HomeNavState():
return $default(_that.selectedNav);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( HomeNavEnum selectedNav)?  $default,) {final _that = this;
switch (_that) {
case _HomeNavState() when $default != null:
return $default(_that.selectedNav);case _:
  return null;

}
}

}

/// @nodoc


class _HomeNavState implements HomeNavState {
   _HomeNavState({this.selectedNav = HomeNavEnum.dash});
  

@override@JsonKey() final  HomeNavEnum selectedNav;

/// Create a copy of HomeNavState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeNavStateCopyWith<_HomeNavState> get copyWith => __$HomeNavStateCopyWithImpl<_HomeNavState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeNavState&&(identical(other.selectedNav, selectedNav) || other.selectedNav == selectedNav));
}


@override
int get hashCode => Object.hash(runtimeType,selectedNav);

@override
String toString() {
  return 'HomeNavState(selectedNav: $selectedNav)';
}


}

/// @nodoc
abstract mixin class _$HomeNavStateCopyWith<$Res> implements $HomeNavStateCopyWith<$Res> {
  factory _$HomeNavStateCopyWith(_HomeNavState value, $Res Function(_HomeNavState) _then) = __$HomeNavStateCopyWithImpl;
@override @useResult
$Res call({
 HomeNavEnum selectedNav
});




}
/// @nodoc
class __$HomeNavStateCopyWithImpl<$Res>
    implements _$HomeNavStateCopyWith<$Res> {
  __$HomeNavStateCopyWithImpl(this._self, this._then);

  final _HomeNavState _self;
  final $Res Function(_HomeNavState) _then;

/// Create a copy of HomeNavState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedNav = null,}) {
  return _then(_HomeNavState(
selectedNav: null == selectedNav ? _self.selectedNav : selectedNav // ignore: cast_nullable_to_non_nullable
as HomeNavEnum,
  ));
}


}

// dart format on
