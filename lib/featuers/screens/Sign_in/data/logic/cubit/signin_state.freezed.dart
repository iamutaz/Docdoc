// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SigninState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SigninState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SigninState<$T>()';
}


}

/// @nodoc
class $SigninStateCopyWith<T,$Res>  {
$SigninStateCopyWith(SigninState<T> _, $Res Function(SigninState<T>) __);
}


/// Adds pattern-matching-related methods to [SigninState].
extension SigninStatePatterns<T> on SigninState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( SignupLoading<T> value)?  signuploading,TResult Function( SignupSuccess<T> value)?  signupsuccess,TResult Function( SignupFailure<T> value)?  signupfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SignupLoading() when signuploading != null:
return signuploading(_that);case SignupSuccess() when signupsuccess != null:
return signupsuccess(_that);case SignupFailure() when signupfailure != null:
return signupfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( SignupLoading<T> value)  signuploading,required TResult Function( SignupSuccess<T> value)  signupsuccess,required TResult Function( SignupFailure<T> value)  signupfailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SignupLoading():
return signuploading(_that);case SignupSuccess():
return signupsuccess(_that);case SignupFailure():
return signupfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( SignupLoading<T> value)?  signuploading,TResult? Function( SignupSuccess<T> value)?  signupsuccess,TResult? Function( SignupFailure<T> value)?  signupfailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SignupLoading() when signuploading != null:
return signuploading(_that);case SignupSuccess() when signupsuccess != null:
return signupsuccess(_that);case SignupFailure() when signupfailure != null:
return signupfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  signuploading,TResult Function( T data)?  signupsuccess,TResult Function( String error)?  signupfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SignupLoading() when signuploading != null:
return signuploading();case SignupSuccess() when signupsuccess != null:
return signupsuccess(_that.data);case SignupFailure() when signupfailure != null:
return signupfailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  signuploading,required TResult Function( T data)  signupsuccess,required TResult Function( String error)  signupfailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SignupLoading():
return signuploading();case SignupSuccess():
return signupsuccess(_that.data);case SignupFailure():
return signupfailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  signuploading,TResult? Function( T data)?  signupsuccess,TResult? Function( String error)?  signupfailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SignupLoading() when signuploading != null:
return signuploading();case SignupSuccess() when signupsuccess != null:
return signupsuccess(_that.data);case SignupFailure() when signupfailure != null:
return signupfailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements SigninState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SigninState<$T>.initial()';
}


}




/// @nodoc


class SignupLoading<T> implements SigninState<T> {
  const SignupLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SigninState<$T>.signuploading()';
}


}




/// @nodoc


class SignupSuccess<T> implements SigninState<T> {
  const SignupSuccess(this.data);
  

 final  T data;

/// Create a copy of SigninState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupSuccessCopyWith<T, SignupSuccess<T>> get copyWith => _$SignupSuccessCopyWithImpl<T, SignupSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'SigninState<$T>.signupsuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $SignupSuccessCopyWith<T,$Res> implements $SigninStateCopyWith<T, $Res> {
  factory $SignupSuccessCopyWith(SignupSuccess<T> value, $Res Function(SignupSuccess<T>) _then) = _$SignupSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$SignupSuccessCopyWithImpl<T,$Res>
    implements $SignupSuccessCopyWith<T, $Res> {
  _$SignupSuccessCopyWithImpl(this._self, this._then);

  final SignupSuccess<T> _self;
  final $Res Function(SignupSuccess<T>) _then;

/// Create a copy of SigninState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(SignupSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class SignupFailure<T> implements SigninState<T> {
  const SignupFailure({required this.error});
  

 final  String error;

/// Create a copy of SigninState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupFailureCopyWith<T, SignupFailure<T>> get copyWith => _$SignupFailureCopyWithImpl<T, SignupFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'SigninState<$T>.signupfailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $SignupFailureCopyWith<T,$Res> implements $SigninStateCopyWith<T, $Res> {
  factory $SignupFailureCopyWith(SignupFailure<T> value, $Res Function(SignupFailure<T>) _then) = _$SignupFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$SignupFailureCopyWithImpl<T,$Res>
    implements $SignupFailureCopyWith<T, $Res> {
  _$SignupFailureCopyWithImpl(this._self, this._then);

  final SignupFailure<T> _self;
  final $Res Function(SignupFailure<T>) _then;

/// Create a copy of SigninState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SignupFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
