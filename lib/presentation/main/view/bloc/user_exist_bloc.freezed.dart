// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_exist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserExistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserExist value) getUserExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserExist value)? getUserExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserExist value)? getUserExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserExistEventCopyWith<$Res> {
  factory $UserExistEventCopyWith(
          UserExistEvent value, $Res Function(UserExistEvent) then) =
      _$UserExistEventCopyWithImpl<$Res, UserExistEvent>;
}

/// @nodoc
class _$UserExistEventCopyWithImpl<$Res, $Val extends UserExistEvent>
    implements $UserExistEventCopyWith<$Res> {
  _$UserExistEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetUserExistImplCopyWith<$Res> {
  factory _$$GetUserExistImplCopyWith(
          _$GetUserExistImpl value, $Res Function(_$GetUserExistImpl) then) =
      __$$GetUserExistImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserExistImplCopyWithImpl<$Res>
    extends _$UserExistEventCopyWithImpl<$Res, _$GetUserExistImpl>
    implements _$$GetUserExistImplCopyWith<$Res> {
  __$$GetUserExistImplCopyWithImpl(
      _$GetUserExistImpl _value, $Res Function(_$GetUserExistImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserExistImpl implements _GetUserExist {
  const _$GetUserExistImpl();

  @override
  String toString() {
    return 'UserExistEvent.getUserExist()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserExistImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserExist,
  }) {
    return getUserExist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserExist,
  }) {
    return getUserExist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserExist,
    required TResult orElse(),
  }) {
    if (getUserExist != null) {
      return getUserExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserExist value) getUserExist,
  }) {
    return getUserExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserExist value)? getUserExist,
  }) {
    return getUserExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserExist value)? getUserExist,
    required TResult orElse(),
  }) {
    if (getUserExist != null) {
      return getUserExist(this);
    }
    return orElse();
  }
}

abstract class _GetUserExist implements UserExistEvent {
  const factory _GetUserExist() = _$GetUserExistImpl;
}

/// @nodoc
mixin _$UserExistState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioException error) failure,
    required TResult Function() loading,
    required TResult Function(StandartResponse response) isUserExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioException error)? failure,
    TResult? Function()? loading,
    TResult? Function(StandartResponse response)? isUserExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioException error)? failure,
    TResult Function()? loading,
    TResult Function(StandartResponse response)? isUserExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_IsUserExist value) isUserExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_IsUserExist value)? isUserExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_IsUserExist value)? isUserExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserExistStateCopyWith<$Res> {
  factory $UserExistStateCopyWith(
          UserExistState value, $Res Function(UserExistState) then) =
      _$UserExistStateCopyWithImpl<$Res, UserExistState>;
}

/// @nodoc
class _$UserExistStateCopyWithImpl<$Res, $Val extends UserExistState>
    implements $UserExistStateCopyWith<$Res> {
  _$UserExistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DioException error});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$UserExistStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioException,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.error);

  @override
  final DioException error;

  @override
  String toString() {
    return 'UserExistState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioException error) failure,
    required TResult Function() loading,
    required TResult Function(StandartResponse response) isUserExist,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioException error)? failure,
    TResult? Function()? loading,
    TResult? Function(StandartResponse response)? isUserExist,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioException error)? failure,
    TResult Function()? loading,
    TResult Function(StandartResponse response)? isUserExist,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_IsUserExist value) isUserExist,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_IsUserExist value)? isUserExist,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_IsUserExist value)? isUserExist,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements UserExistState {
  const factory _Failure(final DioException error) = _$FailureImpl;

  DioException get error;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$UserExistStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'UserExistState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioException error) failure,
    required TResult Function() loading,
    required TResult Function(StandartResponse response) isUserExist,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioException error)? failure,
    TResult? Function()? loading,
    TResult? Function(StandartResponse response)? isUserExist,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioException error)? failure,
    TResult Function()? loading,
    TResult Function(StandartResponse response)? isUserExist,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_IsUserExist value) isUserExist,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_IsUserExist value)? isUserExist,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_IsUserExist value)? isUserExist,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements UserExistState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$IsUserExistImplCopyWith<$Res> {
  factory _$$IsUserExistImplCopyWith(
          _$IsUserExistImpl value, $Res Function(_$IsUserExistImpl) then) =
      __$$IsUserExistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StandartResponse response});
}

/// @nodoc
class __$$IsUserExistImplCopyWithImpl<$Res>
    extends _$UserExistStateCopyWithImpl<$Res, _$IsUserExistImpl>
    implements _$$IsUserExistImplCopyWith<$Res> {
  __$$IsUserExistImplCopyWithImpl(
      _$IsUserExistImpl _value, $Res Function(_$IsUserExistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$IsUserExistImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as StandartResponse,
    ));
  }
}

/// @nodoc

class _$IsUserExistImpl implements _IsUserExist {
  const _$IsUserExistImpl(this.response);

  @override
  final StandartResponse response;

  @override
  String toString() {
    return 'UserExistState.isUserExist(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsUserExistImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsUserExistImplCopyWith<_$IsUserExistImpl> get copyWith =>
      __$$IsUserExistImplCopyWithImpl<_$IsUserExistImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioException error) failure,
    required TResult Function() loading,
    required TResult Function(StandartResponse response) isUserExist,
  }) {
    return isUserExist(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioException error)? failure,
    TResult? Function()? loading,
    TResult? Function(StandartResponse response)? isUserExist,
  }) {
    return isUserExist?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioException error)? failure,
    TResult Function()? loading,
    TResult Function(StandartResponse response)? isUserExist,
    required TResult orElse(),
  }) {
    if (isUserExist != null) {
      return isUserExist(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_IsUserExist value) isUserExist,
  }) {
    return isUserExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_IsUserExist value)? isUserExist,
  }) {
    return isUserExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_IsUserExist value)? isUserExist,
    required TResult orElse(),
  }) {
    if (isUserExist != null) {
      return isUserExist(this);
    }
    return orElse();
  }
}

abstract class _IsUserExist implements UserExistState {
  const factory _IsUserExist(final StandartResponse response) =
      _$IsUserExistImpl;

  StandartResponse get response;
  @JsonKey(ignore: true)
  _$$IsUserExistImplCopyWith<_$IsUserExistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
